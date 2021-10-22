<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Evento extends Model
{
    use HasFactory;

    //validaciones
    static $rules=[
        'title'=>'required',
        'descripcion'=>'required',
        'start'=>'required',
        'end'=>'required',
        'color'=>'required',
        'textColor'=>'required'
        
    ];

    //datos que se trabajan
    protected $fillable=['title','descripcion','start','end','color','textColor'];

}
