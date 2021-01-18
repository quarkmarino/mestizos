<?php

namespace Database\Factories;

use App\Models\Servicio;
use Illuminate\Database\Eloquent\Factories\Factory;

class ServicioFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Servicio::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'tipo' => $this->faker->randomElement(Servicio::TIPOS),
            'costo' => $this->faker->randomNumber(4,false).'00',
            'especificaciones' => json_encode([
                'visivilidad' => $this->faker->randomElement([
                    'publico',
                    'privado',
                ]),
                'audiencia' => $this->faker->randomElement([
                    '0-99',
                    '100-599',
                    '600-1000',
                ]),
                'categoria' => $this->faker->randomElement([
                    'gobierno',
                    'negocio',
                    'estandar',
                ]),
                'media' => $this->faker->randomElement([
                    'audio',
                    'grafico',
                    'video',
                ]),
            ])
        ];
    }
}
