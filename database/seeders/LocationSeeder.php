<?php

namespace Database\Seeders;

use App\Models\District;
use App\Models\Province;
use App\Models\Regency;
use App\Models\Village;
use Illuminate\Database\Seeder;

class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $csvFile = fopen(base_path("database/data/csv/provinces.csv"), "r");

        // $firstline = true;
        // while (($data = fgetcsv($csvFile, 0, ",")) !== FALSE) {
        //     if (!$firstline) {
        //         Province::create([
        //             "name" => $data['0'],
        //             "code" => $data['1']
        //         ]);
        //     }
        //     $firstline = false;
        // }

        // fclose($csvFile);

        $csvProvinceFile = fopen(base_path("database/data/csv/provinces.csv"), "r");
        $csvRegencyFile  = fopen(base_path("database/data/csv/regencies.csv"), "r");
        $csvDistrictFile = fopen(base_path("database/data/csv/districts.csv"), "r");
        $csvVillageFile  = fopen(base_path("database/data/csv/villages.csv"), "r");

        $firstline = true;
        while (($data = fgetcsv($csvProvinceFile, 0, ",")) !== FALSE) {
            if (!$firstline) {
                Province::create([
                    "id"   => $data['0'],
                    "name" => $data['1']
                ]);
            }
            $firstline = false;
        }
        fclose($csvProvinceFile);

        $firstline = true;
        while (($data = fgetcsv($csvRegencyFile, 0, ",")) !== FALSE) {
            if (!$firstline) {
                Regency::create([
                    "id"          => $data['0'],
                    "province_id" => $data['1'],
                    "name"        => $data['2']
                ]);
            }
            $firstline = false;
        }
        fclose($csvRegencyFile);

        $firstline = true;
        while (($data = fgetcsv($csvDistrictFile, 0, ",")) !== FALSE) {
            if (!$firstline) {
                District::create([
                    "id"          => $data['0'],
                    "regency_id"  => $data['1'],
                    "name"        => $data['2']
                ]);
            }
            $firstline = false;
        }
        fclose($csvDistrictFile);

        $firstline = true;
        while (($data = fgetcsv($csvVillageFile, 0, ",")) !== FALSE) {
            if (!$firstline) {
                Village::create([
                    "id"          => $data['0'],
                    "district_id" => $data['1'],
                    "name"        => $data['2']
                ]);
            }
            $firstline = false;
        }
        fclose($csvVillageFile);
    }
}
