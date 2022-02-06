<?php

namespace App\Traits;

trait ListOfStreetNameTrait
{
    /**
     * Check if list of street names is sub province.
     *
     * @param int $id Id of province
     * @return bool
     */
    public function isProvince($id)
    {
        return $this->village->district->regency->province_id == $id ? true : false;
    }

    /**
     * Check if list of street names is sub regency.
     *
     * @param int $id Id of regency
     * @return bool
     */
    public function isRegency($id)
    {
        return $this->village->district->regency_id == $id ? true : false;
    }

    /**
     * Check if list of street names is sub district.
     *
     * @param int $id Id of district
     * @return bool
     */
    public function isDistrict($id)
    {
        return $this->village->district_id == $id ? true : false;
    }

    /**
     * Check if list of street names is sub village.
     *
     * @param int $id Id of village
     * @return bool
     */
    public function isVillage($id)
    {
        return $this->village_id == $id ? true : false;
    }

    /**
     * List of Street Names belongs to District.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function district()
    {
        return $this->village->district();
    }

    /**
     * List of Street Names belongs to Regency.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function regency()
    {
        return $this->village->regency();
    }

    /**
     * List of Street Names belongs to Province.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function province()
    {
        return $this->village->regency->province();
    }
}
