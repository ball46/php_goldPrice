<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\App;

return function (App $app) {
    $app->delete('/user/delete', function(Request $request, Response $response){
        $data = json_decode($request->getBody());
        $name = $data->name ?? null;
        $user_name = $data->user_name ?? null;

        if($name == null || $user_name == null) {
            $error = array(
                "Message" => "Input is required for this operation"
            );
            $response->getBody()->write(json_encode($error));
            return $response
                ->withHeader('content-type', 'application/json')
                ->withStatus(400);
        }

        $sql = "DELETE FROM rate WHERE user_name_update = '$user_name' AND name = '$name'";
        try {
            $db = new DB();
            $conn = $db->connect();

            $statement = $conn->prepare($sql);
            $result = $statement->execute();

            $db = null;
            $response->getBody()->write(json_encode($result));

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
