<?php

namespace Database\Seeders;

use App\Classes\RawDataGetter;
use App\Models\Regency;
use Illuminate\Database\Seeder;

class IndoRegionRegencySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Get Data
        $regencies = RawDataGetter::getRegencies();

        // Insert Data to Database
        Regency::insert($regencies);
    }
}
