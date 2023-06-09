<?php

namespace Database\Seeders;

use App\Models\Visitor;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class VisitorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         // Let's truncate our existing records to start from scratch.
         Visitor::truncate();

         $faker = \Faker\Factory::create();

         // And now, let's create a few articles in our database:
         for ($i = 0; $i < 50; $i++) {
             Visitor::create([
                 'firstName' => $faker->firstName(),
                 'lastName' => $faker->lastName(),
                 'email' => $faker->email(),
                 'address'=>$faker->address(),
                 'phone' => $faker->phoneNumber(),
             ]);
         }
    }
}
