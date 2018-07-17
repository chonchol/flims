<?php

use Illuminate\Database\Seeder;
use App\Flim;

class FlimsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Flim::truncate();

        $faker = \Faker\Factory::create();

        // And now, let's create a few flims in our database:
        for ($i = 0; $i < 20; $i++) {
            Flim::create([
                'name' => $faker->sentence($nbWords = 4, $variableNbWords = true),
                'description' => $faker->paragraph,
                'release_date' => $faker->unixTime($max = 'now'),
                'rating' => $faker->randomDigit,
                'ticket_price' => $faker->randomDigit,
                'country' => $faker->country,
                'genre' => $faker->word,
                'photo' => $faker->imageUrl($width = 640, $height = 480, 'cats')
            ]);
        }
    }
}
