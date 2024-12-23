<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\HasDatabaseNotifications;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Notifications\RoutesNotifications;

class Candidates extends Model
{
    use HasDatabaseNotifications, HasFactory, Notifiable, RoutesNotifications, SoftDeletes;

    protected $fillable = [
        'user_id',
        'SkillSet',
        'School',
        'ExperienceDetails',
    ];


    protected $casts = [
        'ExperienceDetails' => 'array',
        'School' => 'array',
        'SkillSet' => 'array',
    ];

    public function user() : BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
