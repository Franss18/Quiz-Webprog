<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Artikel as ArtikelModel;
use App\Models\Comment as CommentModel;

class CommentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        
        $post = ArtikelModel::all(); 


        for($i = 0;$i<30;$i++){
            CommentModel::create([
                'artikel_id' => $post->random()->id,
                'body' => $faker->paragraph
            ]);
        }
    }
}
