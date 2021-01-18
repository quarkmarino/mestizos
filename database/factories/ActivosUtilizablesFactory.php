<?php

namespace Database\Factories;

use App\Models\ActivosUtilizables;
use Illuminate\Database\Eloquent\Factories\Factory;

class ActivosUtilizablesFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = ActivosUtilizables::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'hora_inicio' => $this->faker->time('H:i:s', '9:00'),
            'hora_fin' => $this->faker->time('H:i:s', '18:00'),
        ];
    }
}
