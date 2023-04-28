<?php

use Slim\App;

return function (App $app) {
    //show goldPrice by data
    $routes = require __DIR__ . '/bySystem/getAllData.php';
    $routes($app);

    //update goldPrice by data
    $routes = require __DIR__ . '/bySystem/postData.php';
    $routes($app);

    //update goldPrice by user
    $routes = require __DIR__ . '/byUser/postDataForUser.php';
    $routes($app);

    //update goldPrice by user
    $routes = require __DIR__ . '/byUser/putDataForUser.php';
    $routes($app);

    //update goldPrice by user
    $routes = require __DIR__ . '/byUser/deleteForUser.php';
    $routes($app);

    //update goldPrice by user
    $routes = require __DIR__ . '/byUser/postAllDataForUser.php';
    $routes($app);
};
