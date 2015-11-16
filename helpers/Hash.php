<?php
/**
 * Created by PhpStorm.
 * User: puter
 * Date: 13/11/2015
 * Time: 22:49
 * This file is for comparing password hashing
 */


namespace helpers;

class Hash {


    public function _construct(){

    }
    public function password ($password){
        return password_hash(
            $password,
            PASSWORD_BCRYPT,
            ['cost'=>10]);
        }
    public function passwordCheck($password,$hash){
        return password_verify($password,$hash);
    }

}