<?php

namespace Database\Factories;

use App\Models\Direccion;
use Illuminate\Database\Eloquent\Factories\Factory;

class DireccionFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Direccion::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'pais' => $this->faker->country,
            'ciudad' => $this->faker->city,
            'colonia' => $this->faker->citySuffix,
            'calle' => $this->faker->streetName,
            'numero' => $this->faker->buildingNumber.($this->faker->numberBetween(0, 1) ? '-'.strtoupper($this->faker->randomLetter) : ''),
            'codigo_postal' => $this->faker->postcode,
        ];
    }
}
