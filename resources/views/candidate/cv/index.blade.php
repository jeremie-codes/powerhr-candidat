@extends('layouts.candidate.master')
@section('title')
    {{ __('t-profile-candidat-cv') }}
@endsection
@section('content')

    <!-- page title -->
    <x-page-title title="Générer Cv" pagetitle="Tableau de board" />

    <h5 class="mb-5 underline">Model disponible</h5>
    <div class="grid overflow-hidden border sm:flex card">
        <div
            class="flex flex-col transition flex-[1_0_0%] rtl:border-b rtl:sm:border-b-0 ltr:border-r rtl:sm:border-l border-slate-200 dark:border-zink-500">
            <img class="w-full h-auto rounded-t-md sm:rounded-tr-none" src="{{ asset('images/cv.jpg') }}"
                alt="Image">
            <div class="flex-1 card-body">
                <h6 class="mb-4 text-15">
                    Model title
                </h6>
                <p class="text-slate-500 dark:text-zink-200">
                    This is a wider card with supporting text below as a natural lead-in to additional content. This content
                    is a little bit longer.
                </p>
            </div>
            <div class="border-t card-body border-slate-200 dark:border-zink-500">
                <a class="inline-flex items-center gap-2 mt-3 text-sm font-medium transition-all duration-200 ease-linear text-custom-500 hover:text-custom-600"
                    href="{{ url('/generate/1/cv') }}">
                    Utiliser ce model <i data-lucide="chevron-right" class="inline-block size-4"></i>
                </a>
            </div>
        </div>

        <div
            class="flex flex-col transition flex-[1_0_0%] rtl:border-b rtl:sm:border-b-0 ltr:border-r rtl:sm:border-l border-slate-200 dark:border-zink-500">
            <img class="w-full h-auto" src="{{ asset('images/cv.jpg') }}" alt="Image">
            <div class="flex-1 card-body">
                <h6 class="mb-4 text-15">
                    Model title
                </h6>
                <p class="text-slate-500 dark:text-zink-200">
                    This card has supporting text below as a natural lead-in to additional content.
                </p>
            </div>
            <div class="border-t card-body border-slate-200 dark:border-zink-500">
                <a class="inline-flex items-center gap-2 mt-3 text-sm font-medium transition-all duration-200 ease-linear text-custom-500 hover:text-custom-600"
                    href="{{ url('/generate/2/cv') }}">
                    Utiliser ce model <i data-lucide="chevron-right" class="inline-block size-4"></i>
                </a>
            </div>
        </div>

        <div class="flex flex-col transition flex-[1_0_0%]">
            <img class="w-full h-auto sm:rounded-tr-md" src="{{ asset('images/cv.jpg') }}" alt="Image">
            <div class="flex-1 card-body">
                <h6 class="mb-4 text-15">
                    Model title
                </h6>
                <p class="text-slate-500 dark:text-zink-200">
                    This is a wider card with supporting text below as a natural lead-in to additional content. This card
                    has even longer content than the first to show that equal height action.
                </p>
            </div>
            <div class="border-t card-body border-slate-200 dark:border-zink-500">
                <a class="inline-flex items-center gap-2 mt-3 text-sm font-medium transition-all duration-200 ease-linear text-custom-500 hover:text-custom-600"
                    href="{{ url('/generate/3/cv') }}">
                    Utiliser ce model <i data-lucide="chevron-right" class="inline-block size-4"></i>
                </a>
            </div>
        </div>
    </div><!--end grid-->
@endsection
@push('scripts')
    <!-- App js -->
    <script src="{{ URL::asset('build/js/app.js') }}"></script>
@endpush
