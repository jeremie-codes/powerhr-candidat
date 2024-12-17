<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Personne extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'nom',
        'postNom',
        'prenom',
        'dateNaissance',
        'sexe',
        'nationalite',
        'adresse',
        'codePostal',
        'ville',
        'telephone',
        'user_id',
        'matricule',
        'SkillSet',
        'HighestQualificationHeld',
        'CurrentSalary',
        'AdditionalInformation',
        'Street',
        'School',
        'ExperienceDetails',
    ];

    protected $casts = [
        'ExperienceDetails' => 'array',
        'School' => 'array',
        'SkillSet' => 'array',
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
