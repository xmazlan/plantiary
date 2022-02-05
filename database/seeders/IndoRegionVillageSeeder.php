<?php

namespace Database\Seeders;

use App\Classes\RawDataGetter;
use App\Models\Village;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class IndoRegionVillageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Get Data
        $villages = RawDataGetter::getVillages();

        // Insert Data with Chunk
        DB::transaction(function () use ($villages) {
            $collection = collect($villages);
            $parts = $collection->chunk(1000);
            foreach ($parts as $subset) {
                Village::insert($subset->toArray());
            }
        });
    }
}
