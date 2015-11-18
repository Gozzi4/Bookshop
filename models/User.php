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
    public $timestamps = false;

    protected  $table ='users';

    protected  $fillable = [
        'username',
        'password',
        'email'

    ];


}