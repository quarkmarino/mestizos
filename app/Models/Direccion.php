<?php

namespace App\Models;

use App\Models\Cliente;
use App\Models\Empleado;
use App\Models\Sucursal;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Direccion extends Model
{
    use HasFactory;

    protected $table = 'mestizos_direcciones';

    # Relaciones

    public function cliente()
    {
        return $this->belongsTo(Cliente::class, 'clientes_id');
    }

    public function empleado()
    {
        return $this->belongsTo(Empleado::class, 'empleados_id');
    }

    public function sucursal()
    {
        return $this->belongsTo(Sucursal::class, 'sucursales_id');
    }
}
