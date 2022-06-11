<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class MenuItem extends Model
{

    public function childrenAccounts()
{
    return $this->hasMany(self::class, 'parent_id');
}

    public function children()
{
    return $this->childrenAccounts()->with('children');
}

}
