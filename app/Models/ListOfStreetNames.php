<?php

namespace App\Models;

use App\Traits\ListOfStreetNameTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ListOfStreetNames extends Model
{
    use HasFactory;
    use ListOfStreetNameTrait;

    /**
     * Table name.
     *
     * @var string
     */
    protected $table = 'l5_list_of_street_names';
    protected $guarded = [];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'village_id'
    ];

    public $timestamps = false;

    /**
     * List of Street Names belongs to Village.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function village()
    {
        return $this->belongsTo(Village::class);
    }
}
