<?php

namespace Database\Factories;

use App\Models\Orden;
use Illuminate\Database\Eloquent\Factories\Factory;

class OrdenFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Orden::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'costo' => $this->faker->randomNumber(4,false),
            'fecha_inicio' => $this->faker->date().' '.$this->faker->time(),
            'fecha_entrega' => $this->faker->date().' '.$this->faker->time(),
        ];
    }
}
