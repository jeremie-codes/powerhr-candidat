<?php

namespace App\Actions\Fortify;

use App\Models\Team;
use App\Models\User;
use App\Models\Candidates;
use App\Models\Personne;
use App\Models\Profile;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Create a newly registered user.
     *
     * @param  array<string, string>  $input
     */
    public function create(array $input): User
    {
        Validator::make($input, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => $this->passwordRules(),
            'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['accepted', 'required'] : '',
        ])->validate();

        return DB::transaction(function () use ($input) {
            return tap(User::create([
                'name' => $input['name'],
                'email' => $input['email'],
                'password' => Hash::make($input['password'])
            ])->assignRole('candidate'), function (User $user) {
                $this->createTeam($user);

                Candidates::create(['user_id' => $user->id]);

                Personne::create([
                    'postNom' => '',
                    'prenom' => '',
                    'dateNaissance' => '2007-02-25',
                    'sexe' => '',
                    'nationalite' => '',
                    'adresse' => '',
                    'codePostal' => '',
                    'ville' => '',
                    'telephone' => '',
                    'nom' => '',
                    'user_id' => $user->id,
                    'matricule' => 'OFR' . rand(1000, 9999),
                ]);

                Profile::create([
                    'title' => '',
                    'bio' => '',
                    'location' => '',
                    'is_available' => true,
                    'website' => '',
                    'linkedin' => '',
                    'twitter' => '',
                    'github' => '',
                    'user_id' => $user->id,
                ]);
            });
        });
    }

    /**
     * Create a personal team for the user.
     */
    protected function createTeam(User $user): void
    {
        $user->ownedTeams()->save(Team::forceCreate([
            'user_id' => $user->id,
            'name' => explode(' ', $user->name, 2)[0] . "'s Team",
            'personal_team' => true,
        ]));
    }
}
