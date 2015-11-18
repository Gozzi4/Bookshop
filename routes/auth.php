<?php
// auth routes

$app->get('/api/login',function()use ($app){
    $app->response()->header("Content-Type", "application/json");

    $username =  $app->request->params('username');
    $password =  $app->request->params('password');
//    $email =  $app->request->params('email');



    $app->stop();
});

$app->post('/api/register',function()use ($app){
    $app->response()->header("Content-Type", "application/json");

    $username =  $app->request->params('username');
    $password =  $app->request->params('password');
    $email =  $app->request->params('email');


    $app->user->create([
        'username' => $username,
        'password' => $app->hash->password($password),
        'email' => $email

    ]);
    echo '{"Success": ' . json_encode($username) . '}';
    $app->stop();
});