<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\App;

return function (App $app) {
    $app->post('/user/post', function (Request $request, Response $response){
        $data = json_decode($request->getBody());
        $time = $data->time;
        $name = $data->name ?? null;
        $bid = $data->bid ?? null;
        $ask = $data->ask ?? null;
        $user_name = $data->user_name;

        if($name == null || $bid == null || $ask == null){
            $error = array(
                "Message" => "Input is required for this operation"
            );
            $response->getBody()->write(json_encode($error));
            return $response
                ->withHeader('content-type', 'application/json')
                ->withStatus(400);
        }

        $sql = "INSERT INTO rate (time, name, purchase_price, sell_off_price, user_name_update)
                VALUES (:time, :name, :purchase_price, :sell_off_price, :user_name_update)";
        try {
            $db = new DB();
            $conn = $db->connect();

            $statement = $conn->prepare($sql);
            $statement->bindParam(':time', $time);
            $statement->bindParam(':name', $name);
            $statement->bindParam(':purchase_price', $bid);
            $statement->bindParam(':sell_off_price', $ask);
            $statement->bindParam(':user_name_update', $user_name);
            $result = $statement->execute();

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