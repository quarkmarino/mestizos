<?php

namespace App\Models;

use App\Models\Activo;
use App\Models\ActivosUtilizables;
use App\Models\Producto;
use App\Models\ProductosEncargables;
use App\Models\Recurso;
use App\Models\RecursosConsumibles;
use App\Models\Servicio;
use App\Models\ServiciosEncargables;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Equipo extends Model
{
    use HasFactory;

    const ESPECIALIDADES = [
        'productos',
        'servicios',
        'mixto',
   ];

    protected $table = 'mestizos_equipos';

    # Relaciones

    public function activos_utilizados()
    {
        // return $this->belongsToMany(Activo::class)->using(ActivosUtilizables::class);
        return $this->belongsToMany(Activo::class, 'mestizos_equipos_usa_activos', 'equipos_id', 'activos_id');
    }

    public function recursos_consumidos()
    {
        // return $this->belongsToMany(Recurso::class)->using(RecursosConsumibles::class);
        return $this->belongsToMany(Recurso::class, 'mestizos_equipos_consume_recursos', 'equipos_id', 'recursos_id');
    }

    public function productos_encargados()
    {
        // return $this->belongsToMany(Producto::class)->using(ProductosEncargables::class);
        return $this->belongsToMany(Producto::class, 'mestizos_equipos_tiene_productos', 'productos_id', 'equipos_id');
    }

    public function servicios_encargados()
    {
        // return $this->belongsToMany(Servicio::class)->using(ServiciosEncargables::class);
        return $this->belongsToMany(Servicio::class, 'mestizos_equipos_tiene_servicios', 'servicios_id', 'equipos_id');
    }
}
