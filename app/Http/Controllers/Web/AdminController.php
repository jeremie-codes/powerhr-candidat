<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class AdminController extends Controller
{
    public function create()
    {
        return view('admi.create');
    }

    public function index()
    {
        $admins = User::role('admin')->with('customer')->get();
        return view('admin.index', [
            'admins' => $admins
        ]);
    }

        /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        
        try {
            $admin = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'email_verified_at' => now(),
                'password' => bcrypt($request->password),
                'two_factor_secret' => null,
                'two_factor_recovery_codes' => null,
                'remember_token' => Str::random(10),
                'profile_photo_path' => null,
                'current_team_id' => null,
            ]);
            $admin->assignRole('admin');
            $admin->save();
            return redirect()->route('admin.index')->with('success', 'Admin created successfully');
        } catch (\Throwable $th) {
            return redirect()->route('admin.index')->with('error', 'Admin creation failed');
        }
        
    }

    public function destroy(string $id)
    {   try {
        $admin = User::findOrFail($id);
        $admin->delete();
        return redirect()->route('admin.index')->with('success', 'Admin deleted successfully');
    } catch (\Throwable $th) {
        return redirect()->route('admin.index')->with('error', 'Admin deletion failed');
    }
        
    }

}
