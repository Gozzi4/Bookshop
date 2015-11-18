<?php

/**
 * Created by PhpStorm.
 * User: puter
 * Date: 18/11/2015
 * Time: 15:42
 */
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
            $this->app->auth = $this->app->user->where
            ('id',$_SESSION['user_id'])->first();

//            var_dump($this->app->auth);

        }

    }
}