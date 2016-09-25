<?php

use Illuminate\Database\Seeder;
use App\Category;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::create([
        	'name'=>'Action',
            'slug'=>'action'
        ]);
        Category::create([
        	'name'=>'RPG',
            'slug'=>'rpg'
        ]);
        Category::create([
        	'name'=>'Quest',
            'slug'=>'quest'
        ]);
        Category::create([
        	'name'=>'MMO',
            'slug'=>'mmo'
        ]);
        Category::create([
        	'name'=>'RTS',
            'slug'=>'rts'
        ]);
        Category::create([
        	'name'=>'Shooter',
            'slug'=>'shooter'
        ]);
        Category::create([
        	'name'=>'Horror',
            'slug'=>'horror'
        ]);
        Category::create([
        	'name'=>'Platformer',
            'slug'=>'platformer'
        ]);
    }
}
