<?php

namespace Database\Factories;

use App\Models\RecursosConsumibles;
use Illuminate\Database\Eloquent\Factories\Factory;

class RecursosConsumiblesFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = RecursosConsumibles::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'cantidad' => $this->faker->numberBetween(5, 25)
        ];
    }
}
