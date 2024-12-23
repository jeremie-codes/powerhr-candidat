<?php

namespace App\Http\Controllers\Web;

use Barryvdh\DomPDF\Facade\Pdf as FacadePdf;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ResumeController extends Controller
{
    public function index()
    {
        $user = auth()->user();

        return view('resume', compact('user'));
    }

    public function download()
    {
        $user = auth()->user();

        $pdf = FacadePdf::loadView('resume', compact('user'));

        return $pdf->download('resume.pdf');
    }
}
