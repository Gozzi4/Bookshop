<?php
/**
 * Created by PhpStorm.
 * User: puter
 * Date: 07/12/2015
 * Time: 21:14
 */

namespace models;

use Illuminate\Database\Eloquent\Model as Eloquent;
class Books extends  Eloquent
{

    public $timestamps = false;

    protected  $table ='books';

    protected  $fillable = [
        'id',
        'name',
        'description',
        'author',
        'image',
        'rating',
        'userid'
    ];
}