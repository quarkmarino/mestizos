<?php

namespace Database\Factories;

use App\Models\Recurso;
use Illuminate\Database\Eloquent\Factories\Factory;

class RecursoFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Recurso::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'disponibilidad' => $this->faker->numberBetween(0,120),
            'tipo' => $this->faker->randomElement(Recurso::TIPOS),
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
            ])
        ];
    }
}
