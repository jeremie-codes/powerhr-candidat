<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Candidates;
use App\Models\User;
use App\Models\Personne;
use App\Models\Profile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CandidateController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = User::with('candidates', 'profile', 'personne')->findOrFail(Auth::user()->id);
        return view('candidate.index', [
            'user' => $user
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'nom' => $request['nom'],
        //     'postNom' => $request['postNom'],
        //     'prenom' => $request['prenom'],
        //     'dateNaissance' => $request['dateNaissance'],
        //     'sexe' => ['nullable'],
        //     'nationalite' => ['nullable'],
        //     'adresse' => ['nullable'],
        //     'codePostal' => ['nullable'],
        //     'ville' => ['nullable'],
        //     'telephone' => ['nullable'],
        //     'SkillSet' => ['nullable'],
        //     'HighestQualificationHeld' => ['nullable'],
        //     'AdditionalInformation' => ['nullable'],
        //     'School' => ['nullable'],
        //     'ExperienceDetails' => ['nullable'],
        // ]);

        echo($request->user);

        $user = User::findOrFail($request->user);
        $personne = Personne::findOrFail($request->user);
        $candidate = Candidates::findOrFail($request->user);
        $profile = Profile::findOrFail($request->user);

        if (!$user && !$personne && !$candidate && !$profile) {
            return redirect()->route('candidate.index', ['user' => $user]);
        }
        try {
            $personne->update([
                'nom' => $request['nom'],
                'postNom' => $request['postNom'],
                'prenom' => $request['prenom'],
                'dateNaissance' => $request['dateNaissance'],
                'sexe' => $request['sexe'],
                'nationalite' => $request['nationalite'],
                'adresse' => $request['adresse'],
                'codePostal' => $request['codePostal'],
                'ville' => $request['ville'],
                'telephone' => $request['telephone'],
            ]);

            $candidate->update([
                'SkillSet' =>  $request['SkillSet'],
                'HighestQualificationHeld' =>  $request['HighestQualificationHeld'],
                'AdditionalInformation' =>  $request['AdditionalInformation'],
                'School' =>  $request['School'],
                'ExperienceDetails' =>  $request['ExperienceDetails'],
            ]);
            
            return redirect()->route('candidate.index', ['fragment' => 'projectsTabs']);
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }
    
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        return redirect()->route('users.index')->with('delete-success', 'User deleted successfully.');
    }
}
