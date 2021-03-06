<?php

namespace App\Models;

use App\Traits\DistrictTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Village extends Model
{
    use HasFactory;
    use DistrictTrait;

    /**
     * Table name.
     *
     * @var string
     */
    protected $table = 'l4_villages';
    protected $guarded = [];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'district_id'
    ];

    public $timestamps = false;

    /**
     * Village belongs to District.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function district()
    {
        return $this->belongsTo(District::class);
    }

    /**
     * Village has many List of Street Names.
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function listOfStreetNames()
    {
        return $this->hasMany(ListOfStreetNames::class);
    }
}
