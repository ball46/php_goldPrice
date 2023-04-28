<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\App;

return function (App $app) {
    $app->post('/user/post/all', function (Request $request, Response $response){
//        $json = json_decode($request->getBody());
//        $time = $json->time;
//        $user = $json->name;
//        $data = $json->file;
        $body = $request->getParsedBody();
        echo $body;
        $time = $body['time'];
        $user = $body['name'];
//        when use web server
        $file = $_FILES['file'];
        $data = file_get_contents($file['tmp_name']);
//        when to use postman
//        $data = $body['file'];
        $data_array = json_decode($data);

        $sql = "INSERT INTO rate (time, name, purchase_price, sell_off_price, user_name_update)
                VALUES (:time, :name, :purchase_price, :sell_off_price, :user_name_update)";
        try{
            $db = new DB();
            $conn = $db->connect();

            $statement = $conn->prepare($sql);
            $result = "";

            foreach ($data_array as $object) {
                $name = $object->name;
                $bid = $object->bid;
                $ask = $object->ask;

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