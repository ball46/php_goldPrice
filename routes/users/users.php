<?php

use Slim\App;

return function (App $app) {
    //login user
    $routes = require __DIR__ . '/byUser/getUsers.php';
    $routes($app);

    //register user
    $routes = require __DIR__ . '/byUser/postUsers.php';
    $routes($app);

    //look all user data
    $routes = require __DIR__ . '/bySystem/getAllUsers.php';
    $routes($app);
};