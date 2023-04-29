<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\App;

return function (App $app) {
    $app->post('/inputData', function (Request $request, Response $response){
        global $app;
        $url = 'https://www.thaigold.info/RealTimeDataV2/gtdata_.txt';
        $data = file_get_contents($url);
        $json = json_decode($data);

        $time = $json[0]->ask; //this use for all time data to input in database
        array_shift($json); // remove the first object from the array

        $sql = "INSERT INTO rate (time, name, purchase_price, sell_off_price, user_name_update)
                VALUES (:time, :name, :purchase_price, :sell_off_price, :user_name_update)";

        $routes = require __DIR__ . '/../../users/bySystem/getAllUsers.php';
        $routes($app);

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