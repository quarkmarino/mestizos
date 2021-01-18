<?php

namespace App\Models;

use App\Models\Cliente;
use App\Models\Producto;
use App\Models\Servicio;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orden extends Model
{
    use HasFactory;

    protected $table = 'mestizos_ordenes';

    # Relaciones

    public function cliente()
    {
        return $this->belongsTo(Cliente::class, 'clientes_id');
    }
    
    public function servicios()
    {
        return $this->hasMany(Servicio::class, 'ordenes_id');
    }
    
    public function productos()
    {
        return $this->hasMany(Producto::class, 'ordenes_id');
    }
    
}
