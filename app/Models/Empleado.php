<?php

namespace App\Models;

use App\Models\Direccion;
use App\Models\Equipo;
use App\Models\Sucursal;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
    const TIPOS = [
        'director',
        'subordinado'
    ];

    const PUESTOS = [
        'Diseñador',
        'Elaborador'
    ];

    const NIVELES_ACADEMICOS = [
        'Primaria',
        'Secundaria',
        'Bachillerato',
        'Universidad'
    ];

    use HasFactory;
    
    protected $table = 'mestizos_empleados';

    # Relaciones

    public function sucursal()
    {
        return $this->belongsTo(Sucursal::class, 'sucursales_id');
    }

    public function direccion()
    {
        return $this->hasOne(Direccion::class, 'empleados_id');
    }

    public function equipo()
    {
        return $this->belongsTo(Equipo::class, 'equipos_id');
    }

    public function equipos_dirigidos()
    {
        return $this->hasMany(Equipo::class, 'empleados_id');
    }
    
}
