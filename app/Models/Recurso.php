<?php

namespace App\Models;

use App\Models\Equipo;
use App\Models\RecursosConsumibles;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Recurso extends Model
{
    use HasFactory;

    const TIPOS = [
        'tintas',
        'solventes',
        'papeles',
        'articulos',
    ];

    protected $table = 'mestizos_recursos';

    protected $casts = [
        'especificaciones' => 'object'
    ];

    # Relaciones

    public function recursos_de_trabajo()
    {
        return $this->belongsToMany(Equipo::class)->using(RecursosConsumibles::class);
    }

}
