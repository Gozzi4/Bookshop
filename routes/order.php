<?php

$app->get('/orders', function() use ($app) {




});


$app->post('/addorder', function() use ($app) {

    $app->response()->header("Content-Type", "application/json");

    $er = json_decode($app->request->getBody(),true);

    $userId = $er['userId'];
    $bookId = $er['bookId'];


    $app->order->create([
        'userId' => $userId,
        'bookId' => $bookId
    ]);



});