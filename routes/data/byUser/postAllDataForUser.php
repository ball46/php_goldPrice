<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\App;

return function (App $app) {
    $app->post('/user/post/all', function (Request $request, Response $response) {
        $body = $request->getParsedBody();
        $time = $body['time'];
        $user = $body['name'];
//        when use web server
//        Determine the file key based on the type field
        $fileKey = $body['type'] === 'csv' ? 'csvFile' : 'file';

//        when to use postman
//        $data = $body['file'];

        $sql = "INSERT INTO rate (time, name, purchase_price, sell_off_price, user_name_update)
                VALUES (:time, :name, :purchase_price, :sell_off_price, :user_name_update)";
        try {
            $db = new DB();
            $conn = $db->connect();

            $statement = $conn->prepare($sql);
            $result = "";

            if ($fileKey === 'file') {
                $file = $_FILES['file'];
                $data = file_get_contents($file['tmp_name']);
                $data_array = json_decode($data);
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
            } else {
                $uploadedFile = $request->getUploadedFiles()['csvFile'];
                // Check if the file was uploaded successfully
                if ($uploadedFile->getError() === UPLOAD_ERR_OK) {
                    // Get the file stream from the uploaded file
                    $fileStream = $uploadedFile->getStream();

//                  Read the contents of the CSV file
                    $resource = $fileStream->detach();
                    $csvData = stream_get_contents($resource);

                    // Convert the CSV data to an array
                    $dataArray = array_map('str_getcsv', explode("\n", $csvData));

                    // Remove the empty last row if it exists
                    if (empty(end($dataArray))) {
                        array_pop($dataArray);
                    }

                    foreach ($dataArray as $row) {
                        $name = $row[0];
                        $bid = $row[1];
                        $ask = $row[2];

                        $statement->bindParam(':time', $time);
                        $statement->bindParam(':name', $name);
                        $statement->bindParam(':purchase_price', $bid);
                        $statement->bindParam(':sell_off_price', $ask);
                        $statement->bindParam(':user_name_update', $user);
                        $result = $statement->execute();
                    }
                }
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