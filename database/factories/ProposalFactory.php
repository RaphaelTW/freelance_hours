<?php

namespace Database\Factories;

use App\Models\Project;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProposalFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'email' => fake()->safeEmail(),
            'hours' => fake()->numberBetween(1, 120),
            // 'hours' => random_int(1, 100),
            // 'hours' => fake()->randomNumber(),
            'project_id' => Project::factory(),
        ];
    }
}
