<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $fillable = [
    	'user_id', 'content', 'live', 'post_on'
    ];


    public function setLiveAttributes($value){
    	$this->attributes['live']=(boolean)($value);
    }

}
