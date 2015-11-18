<?php
// auth routes

$app->post('/api/login',function()use ($app){

    $app->response()->header("Content-Type", "application/json");

    $er = json_decode($app->request->getBody(),true);
    $identifier = $er['username'];
    $password = $er['password'];
////    $email = '';

//    $identifier =  $app->request->params('username');
//    $password =  $app->request->params('password');
//    $email =  $app->request->params('email');

    $v =$app->validation;

    $v->validate([

      'identifier'=>[$identifier,'required'],
        'password'=>[$password,'required']

    ]);

    if($v->passes()){
        $user = $app->user
            ->where('username',$identifier)
            ->orWhere('email',$identifier)
            ->first();


        if($user && $app->hash->passwordCheck($password, $user->password)){

            $_SESSION['user_id'] = $user->id;

            echo json_encode($user);
        }else{
            echo '{"Error": "cannot log you in" }';
        }

    }else{

        echo'failed';
    }

    $app->stop();
});

$app->post('/api/register',function()use ($app){
    $app->response()->header("Content-Type", "application/json");

    $username =  $app->request->params('username');
    $password =  $app->request->params('password');
    $email =  $app->request->params('email');

    $v =$app->validation;

    $v->validate([
        'email' => [$email,'required|email|uniqueEmail'],
        'username' => [$username,'required|alnumDash|max(20)'],
        'password' => [$password,'required|min(6)']

    ]);



    if($v->passes()){
        $app->user->create([
            'username' => $username,
            'password' => $app->hash->password($password),
            'email' => $email
        ]);
        echo '{"Success": ' . json_encode($username) . '}';
    }


    $app->stop();
});