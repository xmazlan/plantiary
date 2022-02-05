<?php

namespace Database\Seeders;

use App\Classes\RawDataGetter;
use App\Models\District;
use Illuminate\Database\Seeder;

class IndoRegionDistrictSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Get Data
        $districts = RawDataGetter::getDistricts();

        // Insert Data to Database
        District::insert($districts);
    }
}
