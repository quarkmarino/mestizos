<?php

namespace App\Models;

use App\Models\Direccion;
use App\Models\Orden;
use App\Models\Sucursal;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    use HasFactory;

    protected $table = 'mestizos_clientes';

    # Relaciones

    public function sucursal()
    {
        return $this->belongsTo(Sucursal::class, 'sucursales_id');
    }

    public function direccion()
    {
        return $this->hasOne(Direccion::class, 'clientes_id');
    }

    public function ordenes()
    {
        return $this->hasMany(Orden::class, 'clientes_id');
    }
    
}
