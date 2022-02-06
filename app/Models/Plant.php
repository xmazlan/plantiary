<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Plant extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];

    /**
     * plants belongs to a plant name.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function plantName()
    {
        return $this->belongsTo(PlantName::class);
    }
}
