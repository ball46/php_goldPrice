<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\App;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

return function (App $app) {
    $app->post('/inputData', function (Request $request, Response $response){
        $url = 'https://www.thaigold.info/RealTimeDataV2/gtdata_.txt';
        $data = file_get_contents($url);
        $json = json_decode($data);

        $time = $json[0]->ask; //this use for all time data to input in database
        array_shift($json); // remove the first object from the array

        $sql = "INSERT INTO rate (time, name, purchase_price, sell_off_price, user_name_update)
                VALUES (:time, :name, :purchase_price, :sell_off_price, :user_name_update)";

        try{
            $db = new DB();
            $conn = $db->connect();

            $statement = $conn->prepare($sql);
            $result = "";

            foreach ($json as $object) {
                $name = $object->name;
                $bid = $object->bid;
                $ask = $object->ask;
                $user = "data";

                if($name == "สมาคมฯ"){
                    $my_sql = "SELECT * FROM rate WHERE name = '$name' ORDER BY id DESC LIMIT 1";
                    $stt = $conn->query($my_sql);
                    $data_price = $stt->fetch(PDO::FETCH_OBJ);

                    if(isset($data_price->purchase_price) && $data_price->purchase_price != $bid
                        || isset($data_price->sell_off_price) && $data_price->sell_off_price != $ask){
                        $my_sql2 = "SELECT * FROM users";
                        $mail = new PHPMailer(true);
                        $stt2 = $conn->query($my_sql2);
                        $data_user = $stt2->fetchAll(PDO::FETCH_OBJ);

                        try{
                            //Server settings
                            $mail->isSMTP();
                            $mail->Host       = 'smtp.???.com';
                            $mail->SMTPAuth   = true;
                            $mail->Username   = 'your mail is here';
                            $mail->Password   = 'your password is here';
                            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
                            $mail->Port       = 587;

                            foreach ($data_user as $username){
                                //Recipient
                                $mail->setFrom('your mail is here', 'Admin');
                                $mail->addAddress($username->email, $username->name);

                                //Content
                                $mail->isHTML();
                                $mail->Subject = 'Gold price is updated';
                                $mail->Body    = '<p>Data is updated</p>';

                                $mail->send();
                            }

                            echo 'Message has been sent';

                        }catch(Exception){
                            echo "Message could not be sent. Mailer Error: $mail->ErrorInfo";
                        }
                    }
                }

                $statement->bindParam(':time', $time);
                $statement->bindParam(':name', $name);
                $statement->bindParam(':purchase_price', $bid);
                $statement->bindParam(':sell_off_price', $ask);
                $statement->bindParam(':user_name_update', $user);
                $result = $statement->execute();
            }

            $db = null;
            $response->getBody()->write(json_encode($result));

            return $response
                ->withHeader('content-type', 'application/json')
                ->withStatus(200);
        } catch (PDOException $e) {
            $error = array(
                "Message" => $e->getMessage()
            );

            $response->getBody()->write(json_encode($error));
            return $response
                ->withHeader('content-type', 'application/json')
                ->withStatus(500);
        }
    });
};