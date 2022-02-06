<?php

namespace App\Http\Livewire;

use App\Models\District;
use App\Models\ListOfStreetNames;
// use App\Models\Province;
// use App\Models\Regency;
use App\Models\Village;
use Livewire\Component;

class Region extends Component
{
    public $modal = false;
    public Int
        // $province_id = 0,
        $regency_id = 1404,
        $district_id = 0,
        $village_id = 0,
        $street_id = 0;

    public $location_type = null, $data_name = null;

    public function render()
    {
        $content = [
            'tab_title' => 'Region',
            'livepage'  => 'region',
            // 'provinces' => Province::where('id', 14)->get(),
            // 'regencies' => Regency::where('province_id', $this->province_id)->get(),
            // 'regencies' => Regency::where('id', 1404)->get(),
            'districts' => District::where('regency_id', $this->regency_id)->orderBy('name')->get(),
            'villages'  => Village::where('district_id', $this->district_id)->orderBy('name')->get(),
            'list_of_street_names' => ListOfStreetNames::where('village_id', $this->village_id)->orderBy('name')->get(),
        ];

        // dd($content['provinces']);

        return view('livewire.liveout', $content);
    }

    public function get_data($type, Int $id)
    {
        switch ($type) {
                // case 'province':
                //     $this->province_id = $this->province_id == $id ? 0 : $id;
                //     $this->regency_id = 0;
                //     $this->district_id = 0;
                //     $this->village_id = 0;
                //     break;
                // case 'regency':
                //     $this->regency_id = $id;
                //     $this->district_id = 0;
                //     $this->village_id = 0;
                //     break;
            case 'district':
                $this->district_id = $this->district_id == $id ? 0 : $id;
                $this->village_id = 0;
                $this->street_id = 0;
                break;
            case 'village':
                $this->village_id = $this->village_id == $id ? 0 : $id;
                $this->street_id = 0;
                break;
        }
    }

    public function showModal($location_type)
    {
        $this->data_name = null;
        $this->location_type = $location_type;
        $this->modal = true;
    }

    public function resetInputFields()
    {
        $this->location_type = null;
        $this->data_name = null;
        $this->modal = false;
    }

    public function createData()
    {
        $location_type = $this->location_type;
        $this->validate([
            'data_name' => 'required|string|max:255',
            'location_type' => 'required|string|in:district,village,street',
        ]);

        if ($location_type == 'district') {
            $max = District::where('regency_id', $this->regency_id)->max('id');
            if ($max != 0) {
                $new_id = $max + 1;
            } else {
                $new_id = $this->regency_id . '010';
            }

            District::create([
                'id' => $new_id,
                'regency_id' => 1404,
                'name' => $this->data_name,
            ]);
        } elseif ($location_type == 'village') {
            $max = Village::where('district_id', $this->district_id)->max('id');
            if ($max != 0) {
                $new_id = $max + 1;
            } else {
                $new_id = $this->district_id . '001';
            }

            Village::create([
                'id' => $new_id,
                'district_id' => $this->district_id,
                'name' => $this->data_name,
            ]);
        } elseif ($location_type == 'street') {
            $max = ListOfStreetNames::where('village_id', $this->village_id)->max('id');
            if ($max != 0) {
                $new_id = $max + 1;
            } else {
                $new_id = $this->village_id . '001';
            }

            ListOfStreetNames::create([
                'id' => $new_id,
                'village_id' => $this->village_id,
                'name' => $this->data_name,
            ]);
        }

        $this->resetInputFields();
    }
}
