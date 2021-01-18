<?php

namespace Database\Factories;

use App\Models\Activo;
use Illuminate\Database\Eloquent\Factories\Factory;

class ActivoFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Activo::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'numero_de_serie' => $this->faker->randomNumber(8, true),
            'tipo' => $this->faker->randomElement(Activo::TIPOS),
            'especificaciones' => json_encode([
                'proposito' => $this->faker->randomElement([
                    'multiple',
                    'diverso',
                    'unico',
                ]),
                'tamanno' => $this->faker->randomElement([
                    'chico',
                    'mediano',
                    'grande',
                ]),
            ])
        ];
    }
}
