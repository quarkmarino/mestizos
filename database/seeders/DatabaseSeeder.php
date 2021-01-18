<?php

namespace Database\Seeders;

use App\Models\Activo;
use App\Models\ActivosUtilizables;
use App\Models\Cliente;
use App\Models\Empleado;
use App\Models\Equipo;
use App\Models\Orden;
use App\Models\Producto;
use App\Models\ProductosEncargables;
use App\Models\Recurso;
use App\Models\RecursosConsumibles;
use App\Models\Servicio;
use App\Models\ServiciosEncargables;
use App\Models\Sucursal;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Sucursal::factory()->count(2)
            ->has(Empleado::factory()
                ->count(2)
                ->state(function($attributes, Sucursal $sucursal){
                    return ['sucursales_id' => $sucursal->id];
                })
                ->has(Equipo::factory()
                    ->state(function($attributes, Empleado $empleado){
                        return ['empleados_id' => $empleado->id];
                    })
                    ->hasAttached(
                        Recurso::factory(),
                        // Recurso::count() == 0
                        //     ? Recurso::factory()->create()
                        //     : (rand(0, 1) ? Recurso::inRandomOrder()->first() : Recurso::factory()->create()),
                        RecursosConsumibles::factory()->raw(),
                        'recursos_consumidos'
                    )
                    ->hasAttached(
                        Activo::factory(),
                        // Activo::count() == 0
                        //     ? Activo::factory()->create()
                        //     : (rand(0, 1) ? Activo::inRandomOrder()->first() : Activo::factory()->create()),
                        ActivosUtilizables::factory()->raw(),
                        'activos_utilizados'
                    ),
                    'equipos_dirigidos'
                )
                ->hasDireccion()
            )
            ->has(Cliente::factory()
                ->count(3)
                ->state(function($attributes, Sucursal $sucursal){
                    return ['sucursales_id' => $sucursal->id];
                })
                ->hasOrdenes(Orden::factory()
                    // ->count(rand(1, 2))
                    ->state(function($attributes, Cliente $cliente){
                        return ['clientes_id' => $cliente->id];
                    })
                    ->hasProductos(Producto::factory()
                        // ->count(rand(0, 2))
                        ->state(function($attributes, Orden $orden){
                            return ['ordenes_id' => $orden->id];
                        }),
                        // ->hasAttached(
                        //     Equipo::inRandomOrder()->first(),
                        //     ProductosEncargables::factory()->raw(),
                        //     'equipos'
                        // ),
                        // 'productos'
                    )
                    ->hasServicios(Servicio::factory()
                        // ->count(rand(0, 2))
                        ->state(function($attributes, Orden $orden){
                            return ['ordenes_id' => $orden->id];
                        }),
                        // ->hasAttached(
                        //     Equipo::inRandomOrder()->first(),
                        //     ServiciosEncargables::factory()->raw(),
                        //     'equipos'
                        // ),
                        // 'servicios'
                    )
                )
                ->hasDireccion()
            )
            ->hasDireccion()
            ->create();
    }
}
