<?php

namespace Database\Factories;

use App\Models\Empleado;
use Illuminate\Database\Eloquent\Factories\Factory;

class EmpleadoFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Empleado::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nombre' => $this->faker->firstName.' '.$this->faker->lastName,
            'rfc' => $this->faker->regexify('^[A-Z]{3,4}([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])[A-Z|\d]{3}$'),
            'tipo' => $this->faker->randomElement(Empleado::TIPOS),
            'puesto' => $this->faker->randomElement(Empleado::PUESTOS),
            'nivel_academico' => $this->faker->numberBetween(0, 1) ? $this->faker->randomElement(Empleado::NIVELES_ACADEMICOS) : null,
        ];
    }
}
