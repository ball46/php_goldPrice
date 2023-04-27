<?php

use Slim\App;

return function (App $app) {
    //call api data
    $routes = require __DIR__ . '/data/data.php';
    $routes($app);

    //call api user
    $routes = require __DIR__ . '/users/users.php';
    $routes($app);
};