<?php

namespace Database\Seeders;


use App\Models\Visit;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class VisitTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Let's truncate our existing records to start from scratch.
        Visit::truncate();

        $faker = \Faker\Factory::create();

        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 50; $i++) {
            Visit::create([
                'purpose' => $faker->paragraph(),
                'date' => $faker->date(),
                'departureDate' => $faker->date(),
                'user_id' => 1,
                'visitor_id' => 1,
            ]);
        }
    }
}
