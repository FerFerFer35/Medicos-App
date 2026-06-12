<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Medico extends Model
{
    //
    use HasFactory;

    protected $fillable = [
        'nombre_completo',
        'especialidad',
        'cedula_profesional',
        'fecha_registro'
    ];

    protected $casts = [
        'fecha_registro' => 'datetime',
    ];
}
