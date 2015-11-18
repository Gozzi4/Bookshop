<?php

/**
 * Created by PhpStorm.
 * User: puter
 * Date: 18/11/2015
 * Time: 11:46
 */
namespace validator;

use Violin\Violin;
use models\User as User;

class validator extends Violin
{

    protected $user;

    public function __construct(User $user)
    {

        $this->user=$user;
//        $this->addFieldMessage([
//
//        'email'=>[
//
//            'uniqueEmail' =>'that email is already taken'
//        ]
//
//        ]);

    }
    public function validate_uniqueEmail($value,$input,$args){

        $user = $this->user->where('email',$value);

        return ! (bool) $user->count();

    }
    public function validate_uniqueUsername($value,$input,$args){

        return ! (bool) $this->user->where('username',$value)->count();


    }
}