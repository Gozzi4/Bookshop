<?php

namespace middleware;
use Slim\Middleware;
class beforeMiddelware extends Middleware
{

    public function call(){

        $this->app->hook('slim.before',[$this,'run']);
        $this->next->call();
    }

    public function run(){

        if(isset($_SESSION['user_id'])){
            $this->app->container->auth = $this->app->user->where
            ('id',$_SESSION['user_id'])->first();


        }


    }
}