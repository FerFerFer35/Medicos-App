<?php

namespace Database\Factories;

use App\Models\Medico;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Medico>
 */
class MedicoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $especialidades = [
            'Cardiología',
            'Pediatría',
            'Neurología',
            'Dermatología',
            'Traumatología',
            'Oftalmología',
            'Ginecología',
        ];

        return [
            'nombre_completo' => fake()->name(),
            'especialidad' => fake()->randomElement($especialidades),
            'cedula_profesional' => fake()->unique()->numerify('########'),
            'fecha_registro' => fake()->dateTimeBetween('-6 months', 'now'),
        ];
}
}
