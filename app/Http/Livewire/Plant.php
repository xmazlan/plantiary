<?php

namespace App\Http\Livewire;

use App\Models\Plant as ModelsPlant;
use App\Models\PlantName;
use Livewire\Component;
use phpDocumentor\Reflection\Types\This;

class Plant extends Component
{
    public $modal = false;
    public function render()
    {
        $content = [
            'tab_title'   => 'Plant',
            'livepage'    => 'plant',
            'plants'      => ModelsPlant::all(),
            'plant_names' => PlantName::all(),
        ];
        return view('livewire.plant', $content);
    }

    public function showModal($modal_type)
    {
        if ($modal_type == 'plant') {
            $this;
        } else {
            # code...
        }

        $this->modal = true;
    }
}
