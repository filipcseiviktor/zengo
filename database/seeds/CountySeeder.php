<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CountySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('counties')->insert([
            ['id' => '1', 'name' => 'Baranya', 'image' => 'images/baranya.png'],
            ['id' => '2', 'name' => 'Bács-Kiskun', 'image' => 'images/bacskiskun.png'],
            ['id' => '3', 'name' => 'Békés', 'image' => 'images/bekes.png'],
            ['id' => '4', 'name' => 'Borsod-Abaúj-Zemplén', 'image' => 'images/borsod.png'],
            ['id' => '5', 'name' => 'Csongrád-Csanád', 'image' => 'images/csongrad.png'],
            ['id' => '6', 'name' => 'Fejér', 'image' => 'images/fejer.png'],
            ['id' => '7', 'name' => 'Győr-Moson-Sopron', 'image' => 'images/gyormoson.png'],
            ['id' => '8', 'name' => 'Hajdú-Bihar', 'image' => 'images/hajdubihar.png'],
            ['id' => '9', 'name' => 'Heves', 'image' => 'images/heves.png'],
            ['id' => '10', 'name' => 'Jász-Nagykun-Szolnok', 'image' => 'images/jasznagykun.png'],
            ['id' => '11', 'name' => 'Komárom-Esztergom', 'image' => 'images/komarom.png'],
            ['id' => '12', 'name' => 'Nógrád', 'image' => 'images/nograd.png'],
            ['id' => '13', 'name' => 'Pest', 'image' => 'images/pest.png'],
            ['id' => '14', 'name' => 'Somogy', 'image' => 'images/somogy.png'],
            ['id' => '15', 'name' => 'Szabolcs-Szatmár-Bereg', 'image' => 'images/szabolcs.png'],
            ['id' => '16', 'name' => 'Tolna', 'image' => 'images/tolna.png'],
            ['id' => '17', 'name' => 'Vas', 'image' => 'images/vas.png'],
            ['id' => '18', 'name' => 'Veszprém', 'image' => 'images/veszprem.png'],
            ['id' => '19', 'name' => 'Zala', 'image' => 'images/zala.png'],

        ]);
    }
}