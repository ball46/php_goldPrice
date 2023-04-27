<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\App;
use Firebase\JWT\JWT;

return function (App $app) {
    $app->get('/user/login/{email}/{password}', function (Request $request, Response $response, array $args){
        $email = $args['email'];
        $password = $args['password'];
        $sql = "SELECT * FROM users WHERE email = '$email'";

        try {
            $db = new DB();
            $conn = $db->connect();

            $statement = $conn->query($sql);
            $result = $statement->fetch(PDO::FETCH_OBJ);
            $admin = $result->admin;
            $name = $result->name;
            $email = $result->email;

            //create token
            $payload = array(
                "admin" => $admin,
                "email" => $email,
                "name" => $name
            );

            $jwt = JWT::encode($payload, "my_secret_key", 'HS256');

            $db = null;
            $response->getBody()->write(json_encode($jwt));

            if (password_verify($password, $result->password)) {
                return $response
                    ->withHeader('content-type', 'application/json')
                    ->withStatus(200);
            } else {
                return $response
                    ->withHeader('content-type', 'application/json')
                    ->withStatus(401);
            }
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