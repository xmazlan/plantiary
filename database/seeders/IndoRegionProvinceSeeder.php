<?php

namespace Database\Seeders;

use App\Classes\RawDataGetter;
use App\Models\Province;
use Illuminate\Database\Seeder;

class IndoRegionProvinceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Get Data
        $provinces = RawDataGetter::getProvinces();

        // Insert Data to Database
        Province::insert($provinces);
    }
}
