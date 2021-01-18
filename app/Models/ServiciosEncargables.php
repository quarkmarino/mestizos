<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\Pivot;

class ServiciosEncargables extends Pivot
{
    use HasFactory;
    
    protected $table = 'mestizos_equipos_tiene_servicios';

    protected $casts = [
        'fecha_inicio' => 'datetime',
        'fecha_termino' => 'datetime',
    ];
}
