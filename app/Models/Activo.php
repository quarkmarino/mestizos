<?php

namespace App\Models;

use App\Models\ActivosUtilizables;
use App\Models\Equipo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Activo extends Model
{
    use HasFactory;

    const TIPOS = [
        'maquinaria',
        'equipo_de_computo',
        'mueble',
    ];

    protected $table = 'mestizos_activos';

    protected $casts = [
        'especificaciones' => 'object'
    ];

    # Relaciones

    public function equipos_de_trabajo()
    {
        return $this->belongsToMany(Equipo::class)->using(ActivosUtilizables::class);
    }

}
