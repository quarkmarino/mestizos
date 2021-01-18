<?php

namespace App\Models;

use App\Models\Cliente;
use App\Models\Direccion;
use App\Models\Empleado;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sucursal extends Model
{
    use HasFactory;

    protected $table = 'mestizos_sucursales';

    # Relaciones

    public function empleados()
    {
        return $this->hasMany(Empleado::class, 'sucursales_id');
    }

    public function clientes()
    {
        return $this->hasMany(Cliente::class, 'sucursales_id');
    }
    
    public function direccion()
    {
        return $this->hasOne(Direccion::class, 'sucursales_id');
    }
    
}
