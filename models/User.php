<?php

/**
 * Created by PhpStorm.
 * User: puter
 * Date: 13/11/2015
 * Time: 17:11
 */

namespace models;

use Illuminate\Database\Eloquent\Model as Eloquent;

class User extends Eloquent
{



    protected  $table ='users';

    protected  $schema =[
        'username',
        'password',
        'email',
        'rememeber_identifier',
        'rememeber_token',



    ];


}