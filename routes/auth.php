<?php


$app->post('/login',function()use ($app){

    $app->response()->header("Content-Type", "application/json");

    $er = json_decode($app->request->getBody(),true);
    $identifier = $er['username'];
    $password = $er['password'];

    //uncomment this below for testing on postman

//    $identifier =  $app->request->params('username');
//    $password =  $app->request->params('password');


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

            $_SESSION['user_id']= $user->id;
            // success login
            echo json_encode($user);
        }else{
            echo '{"Error": "cannot log you in" }';
        }

    }else{

        echo'failed';
    }

    // echo $app->container->auth ;

});
$app->get('/log',function()use ($app) {
    // this is when the user refreshes the page
    
   if (isset($app->container->auth)){
       
       echo  json_encode($app->container->auth);
       
   }else {
       
       
       echo  'null';
   }
  
});
$app->post('/register',function()use ($app){
    $app->response()->header("Content-Type", "application/json");

    $er = json_decode($app->request->getBody(),true);
    $username = $er['username'];
    $email = $er['email'];
    $password = $er['password'];

    // uncomment this  for testing on postman

//    $username =  $app->request->params('username');
//    $password =  $app->request->params('password');
//    $email =  $app->request->params('email');

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


        $user = $app->user
            ->where('username',$username)
            ->orWhere('email',$email)
            ->first();


      echo  json_encode($user);
    }


});