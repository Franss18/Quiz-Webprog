<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    protected $table='comment';
    protected $guarded=[];

    public function artikel(){
        return $this->belongsTo(Artikel::class);
    }
}
