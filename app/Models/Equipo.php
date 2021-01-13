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

    protected $table = 'mestizos_equipos';

    # Relaciones

    public function activos()
    {
        return $this->belongsToMany(Activo::class)->using(ActivosUtilizables::class);
    }

    public function productos()
    {
        return $this->belongsToMany(Producto::class)->using(ProductosEncargables::class);
    }
    
    public function recursos()
    {
        return $this->belongsToMany(Recurso::class)->using(RecursosConsumibles::class);
    }

    public function servicios()
    {
        return $this->belongsToMany(Servicio::class)->using(ServiciosEncargables::class);
    }
}
