<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\App;

return function (App $app) {
    $app->get('/user/all', function (Request $request, Response $response){
        $sql = "SELECT * FROM users";
        try {
            $db = new DB();
            $conn = $db->connect();

            $statement = $conn->query($sql);
            $data = $statement->fetchAll(PDO::FETCH_OBJ);

            $db = null;
            $response->getBody()->write(json_encode($data));
            return $response
                ->withHeader('content-type', 'application/json')
                ->withStatus(200);
        }catch (PDOException $e) {
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
