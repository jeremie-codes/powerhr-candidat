<?php

    namespace App\Http\Controllers\Web;
    
    use App\Http\Controllers\Controller;
    use App\Models\Candidates;
    use App\Models\User;
    use App\Models\Job;
    use App\Models\JobUser;
    use App\Models\Personne;
    use App\Models\Profile;
    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\Auth;
    
    class JobController extends Controller
    {
        
    public function index()
        {
            $user = User::with('candidates', 'profile', 'personne')->findOrFail(Auth::user()->id);
            $jobs = Job::where('is_open', true)->latest()->paginate(10);
            $categories = Job::with('category')->where('is_open', true)->select('category_id')->distinct()->get();
            
            // dd($categories);
            
            return view('job.index', compact('user', 'jobs', 'categories'));
        }
        
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
        
    }