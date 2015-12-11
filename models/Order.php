<?php
/**
 * Created by PhpStorm.
 * User: puter
 * Date: 10/12/2015
 * Time: 22:15
 */

namespace models;


use Illuminate\Database\Eloquent\Model as Eloquent;
class Order extends  Eloquent
{

    public $timestamps = false;

    protected  $table ='order';

    protected  $fillable = [
        'userId',
        'bookId'
    ];
}