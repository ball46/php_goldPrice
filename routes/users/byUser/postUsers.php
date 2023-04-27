<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\App;

return function (App $app) {
    $app->post('/user/register', function (Request $request, Response $response) {
        $data = json_decode($request->getBody());
        $admin = $data->admin ?? false;
        $email = $data->email;
        $password = $data->password;
        $password = password_hash($password, PASSWORD_BCRYPT);
        $name = $data->name ?? "none";

        if (!$email || !$password) {
            $error = array(
                "Message" => "Email and password are required fields."
            );
            $response->getBody()->write(json_encode($error));
            return $response
                ->withHeader('content-type', 'application/json')
                ->withStatus(400);
        }

        $sql = "INSERT INTO users (admin, email, password, name) 
                VALUES (:admin, :email, :password, :name)";

        try{
            $db = new DB();
            $conn = $db->connect();

            $statement = $conn->prepare($sql);
            $statement->bindParam(':admin', $admin);
            $statement->bindParam(':email', $email);
            $statement->bindParam(':password', $password);
            $statement->bindParam(':name', $name);
            $result = $statement->execute();

            $db = null;
            $response->getBody()->write(json_encode($result));
            return $response
                ->withHeader('content-type', 'application/json')
                ->withStatus(200);
        }catch (PDOException $e){
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