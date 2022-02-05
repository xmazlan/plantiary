<?php

namespace App\Models;

use App\Traits\ProvinceTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Province extends Model
{
    use HasFactory;
    use ProvinceTrait;

    /**
     * Table name.
     *
     * @var string
     */
    protected $table   = 'l1_provinces';
    protected $guarded = [];

    public $timestamps = false;

    /**
     * Province has many regencies.
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function regencies()
    {
        return $this->hasMany(Regency::class);
    }
}
