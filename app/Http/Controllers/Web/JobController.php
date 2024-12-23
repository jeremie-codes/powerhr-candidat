<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Job;
use App\Models\JobUser;
use App\Models\User;
use Illuminate\Http\Request;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $jobs = Job::with('user', 'category')->latest()-> paginate(10);
        return view('job.index',[
            'jobs' => $jobs
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $jobs = Job::where('is_open', true)->get();
        $hireds = JobUser::where('is_active', true)->with('user', 'job')->get();
        $users = User:: with('personne', 'profile')->role(['candidate', 'employee'])->get();
        return view('job.add',[
            'jobs' => $jobs,
            'hireds' => $hireds,
            'users' => $users
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $user = User::findOrFail($request->user);
        $job = Job::findOrFail($request->job);
        $hired = JobUser::where('user_id', $user->id)->where('job_id', $job->id)->first();
        if ($hired) {
            return redirect()->route('jobs.show', $job->matricule);
        }
        try {
            $hiring = JobUser::create([
                'user_id' => $user->id,
                'job_id' => $job->id,
                'is_active' => true,
                'matricule' => 'OFR'.rand(1000, 9999),
            ]);
            return redirect()->route('jobs.show', ['matricule' => $job->matricule, 'fragment' => 'projectsTabs']);
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
        
    }

    /**
     * Display the specified resource.
     */
    public function show(string $matricule)
    {
        $job = Job::with('user', 'candidates')-> where('matricule', $matricule)->firstOrFail();
        $matchingUsers = $job->findMatchingUsers();
        $minutes = 5;
        $view = views($job)->cooldown($minutes)
            ->record();
        return view('job.show',[
            'job' => $job,
            'matchingUsers' => $matchingUsers,
            'view' => $view
        ]);
    }

    public function addJobToUser($user_id, $job_id){
        
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
        try {
            $candidate = JobUser::findOrFail($id);
            $candidate->delete();
            return redirect()->route('jobs.show', $candidate->job->matricule);
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }
}
