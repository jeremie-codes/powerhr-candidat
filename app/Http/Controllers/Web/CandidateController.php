<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CandidateController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function __construct()
     {
         $this->middleware('auth');
     }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = User::with('personne', 'profile')->findOrFail(Auth::user()->id);

        return view('candidate.index', [
            'user' => $user
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id) //: View
    {
        $user = User::with('personne', 'profile')->findOrFail($id);
        return view('member.show', [
            'user' => $user
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
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
