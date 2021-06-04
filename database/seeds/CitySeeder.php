<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cities')->insert([

            ['id' => '1', 'name' => 'Pécs', 'county_id' => '1'],
            ['id' => '2', 'name' => 'Kecskemét', 'county_id' => '2'],
            ['id' => '3', 'name' => 'Békéscsaba', 'county_id' => '3'],
            ['id' => '4', 'name' => 'Miskolc', 'county_id' => '4'],
            ['id' => '5', 'name' => 'Szeged', 'county_id' => '5'],
            ['id' => '6', 'name' => 'Székesfehérvár', 'county_id' => '6'],
            ['id' => '7', 'name' => 'Győr', 'county_id' => '7'],
            ['id' => '8', 'name' => 'Debrecen', 'county_id' => '8'],
            ['id' => '9', 'name' => 'Eger', 'county_id' => '9'],
            ['id' => '10', 'name' => 'Szolnok', 'county_id' => '10'],
            ['id' => '11', 'name' => 'Tatabánya', 'county_id' => '11'],
            ['id' => '12', 'name' => 'Salgótarján', 'county_id' => '12'],
            ['id' => '13', 'name' => 'Budapest', 'county_id' => '13'],
            ['id' => '14', 'name' => 'Kaposvár', 'county_id' => '14'],
            ['id' => '15', 'name' => 'Nyíregyháza', 'county_id' => '15'],
            ['id' => '16', 'name' => 'Szekszárd', 'county_id' => '16'],
            ['id' => '17', 'name' => 'Szombathely', 'county_id' => '17'],
            ['id' => '18', 'name' => 'Veszprém', 'county_id' => '18'],
            ['id' => '19', 'name' => 'Zalaegerszeg', 'county_id' => '19'],
        ]);
    }
}