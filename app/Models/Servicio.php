<?php

namespace App\Models;

use App\Models\Equipo;
use App\Models\Orden;
use App\Models\ServiciosEncargables;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
    use HasFactory;

    const TIPOS = [
        'logo',
        'marca',
    ];

    protected $table = 'mestizos_servicios';

    protected $casts = [
        'especificaciones' => 'object'
    ];

    # Relaciones

    public function orden()
    {
        return $this->belongsTo(Orden::class, 'ordenes_id');
    }

    public function equipos()
    {
        // return $this->belongsToMany(Equipo::class)->using(ServiciosEncargables::class);
        return $this->belongsToMany(Equipo::class, 'mestizos_equipos_tiene_productos', 'equipos_id', 'productos_id');
    }

}
