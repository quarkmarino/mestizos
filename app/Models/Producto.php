<?php

namespace App\Models;

use App\Models\Equipo;
use App\Models\Orden;
use App\Models\ProductosEncargables;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    use HasFactory;

    const TIPOS = [
        'taza',
        'volante',
        'lona',
        'revista',
        'tarjeta',
        'playera',
    ];

    protected $table = 'mestizos_productos';

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
        // return $this->belongsToMany(Equipo::class)->using(ProductosEncargables::class);
        return $this->belongsToMany(Equipo::class, 'mestizos_equipos_tiene_productos', 'equipos_id', 'productos_id');
    }
    
}
