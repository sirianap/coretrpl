<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pemesanan extends Model
{
    protected $table='pemesanans';

    public $primaryKey='id';

    public function user(){
        return $this->belongsTo('App\User');
    }


}

