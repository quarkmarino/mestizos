<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\Pivot;

class RecursosConsumibles extends Pivot
{
    use HasFactory;
    
    protected $table = 'mestizos_equipos_consume_recursos';
}
