<?php

namespace Database\Factories;

use App\Models\ServiciosEncargables;
use Illuminate\Database\Eloquent\Factories\Factory;

class ServiciosEncargablesFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = ServiciosEncargables::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'fecha_inicio' => $this->faker->dateTimeBetween('-10 days', '-2 days'),
            'fecha_termino' => $this->faker->dateTimeBetween('+2 days', '+10 days'),
        ];
    }
}
