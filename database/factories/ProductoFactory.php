<?php

namespace Database\Factories;

use App\Models\Producto;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductoFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Producto::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'tipo' => $this->faker->randomElement(Producto::TIPOS),
            'cantidad' => $this->faker->randomDigitNotNull,
            'costo_unitario' => $this->faker->randomNumber(4,false).'00',
            'especificaciones' => json_encode([
                'color' => $this->faker->randomElement([
                    'rojo',
                    'verde',
                    'azul',
                    'amarillo',
                ]),
                'tamanno' => $this->faker->randomElement([
                    'chico',
                    'mediano',
                    'grande',
                ]),
                'estilo' => $this->faker->randomElement([
                    'formal',
                    'informal',
                ]),
            ])
        ];
    }
}
