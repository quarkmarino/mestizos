<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\Pivot;

class ProductosEncargables extends Pivot
{
    use HasFactory;
    
    protected $table = 'mestizos_equipos_tiene_productos';

    protected $casts = [
        'fecha_inicio' => 'datetime',
        'fecha_termino' => 'datetime',
    ];
}
