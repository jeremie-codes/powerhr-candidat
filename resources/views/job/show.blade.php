    @extends('layouts.candidate.master')
@section('title')
    {{ __('Account') }}
@endsection
@section('content')
    <div class="mt-1 -ml-3 -mr-3 rounded-none card">
        <div class="card-body !px-2.5">
            <div class="grid grid-cols-1 gap-5 lg:grid-cols-12 2xl:grid-cols-12">
                <!--end col-->
                <div class="lg:col-span-12 2xl:col-span-9 gap-x-5">
                    
                    <!--<h5 class="mb-1">-->
                    <!--    {{$job->user->name}}-->
                    <!--     <i data-lucide="badge-check"-->
                    <!--    class="inline-block size-4 text-sky-500 fill-sky-100 dark:fill-custom-500/20"></i></h5>-->
                    
                    <div class="flex gap-3 mb-4">
                        <p class="text-slate-500 dark:text-zink-200"><i data-lucide="map-pin"
                                class="inline-block size-4 ltr:mr-1 rtl:ml-1 text-slate-500 dark:text-zink-200 fill-slate-100 dark:fill-zink-500"></i>
                                {{$job->user->customer->city ?? "not defined"}}, {{$job->user->customer->adress  ?? "not defined"}}
                        </p>
                    </div>
                    <ul
                        class="flex flex-wrap gap-3 mt-4 text-center divide-x divide-slate-200 dark:divide-zink-500 rtl:divide-x-reverse">
                        <!--<li class="px-5">-->
                        <!--    <h5>-->
                        <!--        {{$job->candidates->count()}}-->
                        <!--    </h5>-->
                        <!--    <p class="text-slate-500 dark:text-zink-200">Candidatures</p>-->
                        <!--</li>-->
                        <!--<li class="px-5">-->
                        <!--    <h5>-->
                        <!--        {{$view}}-->
                        <!--    </h5>-->
                        <!--    <p class="text-slate-500 dark:text-zink-200">Consultations</p>-->
                        <!--</li>-->
                        @if ($job->is_open)
                            <li class="px-5">
                                <p class="text-slate-500 dark:text-zink-200">Status</p>
                                <h5>OPEN</h5>
                            </li>
                        @else
                            <li class="px-5">
                                <p class="text-slate-500 dark:text-zink-200">Status</p>
                                <h5>Close</h5>
                            </li>
                        @endif
                        
                    </ul>
                </div>
            </div><!--end grid-->
        </div>
        <div class="card-body !px-2.5 !py-0">
            <ul class="flex flex-wrap w-full text-sm font-medium text-center nav-tabs">
                <li class="group active">
                    <a href="javascript:void(0);" data-tab-toggle data-target="overviewTabs"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">Overview</a>
                </li>
                <li class="group">
                    <a href="javascript:void(0);" data-tab-toggle data-target="postule"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">Postuler</a>
                </li>
            </ul>
        </div>
    </div><!--end card-->

    <div class="tab-content">
        <div class="block tab-pane" id="overviewTabs">
            <div class="grid grid-cols-1 gap-x-5 2xl:grid-cols-12">
                <div class="2xl:col-span-9">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="mb-3 text-15">Overview</h6>
                            <p class="mb-2 text-slate-500 dark:text-zink-200">
                                {{$job->description}}
                            </p>
                        </div>
                    </div>
                </div><!--end col-->
                <div class="2xl:col-span-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="flex items-center mb-3">
                                <h6 class="grow text-15">
                                    Skills
                                </h6>
                            </div>
                            <div
                                class="px-4 py-3 mb-2 text-sm rounded-md text-slate-500 dark:text-zink-200 bg-slate-50 dark:bg-zink-600">
                                <h6 class="mb-1">
                                    {{$job->skills}}
                                </h6>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h6 class="mb-4 text-15">Earning Reports</h6>

                            <div class="divide-y divide-slate-200 dark:divide-zink-500">
                                <div class="flex items-center gap-3 pb-3">
                                    <div
                                        class="flex items-center justify-center size-12 rounded-full bg-slate-100 dark:bg-zink-600">
                                        <i data-lucide="wallet" class="size-5 text-slate-500 dark:text-zink-200"></i>
                                    </div>
                                    <div>
                                        <h6 class="text-lg">${{$job->salary}}</h6>
                                        <p class="text-slate-500 dark:text-zink-200">
                                            Salaire Mensuel
                                        </p>
                                    </div>
                                </div>
                                <div class="flex items-center gap-3 py-3">
                                    <div
                                        class="flex items-center justify-center size-12 rounded-full bg-slate-100 dark:bg-zink-600">
                                        <i data-lucide="goal" class="size-5 text-slate-500 dark:text-zink-200"></i>
                                    </div>
                                    <div>
                                        @if ($job->duration)
                                            <h6 class="text-lg">
                                                {{$job->duration}}
                                            </h6>
                                        @else
                                            <h6 class="text-lg">
                                                Indeterminée
                                            </h6>
                                        @endif
                                        
                                        <p class="text-slate-500 dark:text-zink-200">
                                            Durée
                                        </p>
                                    </div>
                                </div>
                                <div class="flex items-center gap-3 pt-3">
                                    <div
                                        class="flex items-center justify-center size-12 rounded-full bg-slate-100 dark:bg-zink-600">
                                        <i data-lucide="package" class="size-5 text-slate-500 dark:text-zink-200"></i>
                                    </div>
                                    <div>
                                        <h6 class="text-lg">
                                            {{$job->work_type}}
                                        </h6>
                                        <p class="text-slate-500 dark:text-zink-200">
                                            Type
                                        </p>
                                    </div>
                                </div>
                                <div class="flex items-center gap-3 pt-3">
                                    <div
                                        class="flex items-center justify-center size-12 rounded-full bg-slate-100 dark:bg-zink-600">
                                        <i data-lucide="package" class="size-5 text-slate-500 dark:text-zink-200"></i>
                                    </div>
                                    <div>
                                        <h6 class="text-lg">
                                            {{$job->contract_type}}
                                        </h6>
                                        <p class="text-slate-500 dark:text-zink-200">
                                            Type de Contrat
                                        </p>
                                    </div>
                                </div>
                                <div class="flex items-center gap-3 pt-3">
                                    <div
                                        class="flex items-center justify-center size-12 rounded-full bg-slate-100 dark:bg-zink-600">
                                        <i data-lucide="package" class="size-5 text-slate-500 dark:text-zink-200"></i>
                                    </div>
                                    <div>
                                        <h6 class="text-lg">
                                            {{$job->contract_type}}
                                        </h6>
                                        <p class="text-slate-500 dark:text-zink-200">
                                            Type de Contrat
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!--end card-->
                </div><!--end col-->
            </div><!--end grid-->
        </div>
        
        <div class="block tab-pane" id="postule">
            <div class="grid grid-cols-1 gap-x-5 2xl:grid-cols-12">
                <div class="2xl:col-span-9">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="mb-3 text-15">Overview</h6>
                            <p class="mb-2 text-slate-500 dark:text-zink-200">
                                {{$job->description}}
                            </p>
                        </div>
                    </div>
                </div><!--end col-->
                <div class="2xl:col-span-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="flex items-center mb-3">
                                <h6 class="grow text-15">
                                    Skills
                                </h6>
                            </div>
                            <div
                                class="px-4 py-3 mb-2 text-sm rounded-md text-slate-500 dark:text-zink-200 bg-slate-50 dark:bg-zink-600">
                                <h6 class="mb-1">
                                    {{$job->skills}}
                                </h6>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h6 class="mb-4 text-15">Earning Reports</h6>

                            <div class="divide-y divide-slate-200 dark:divide-zink-500">
                                <div class="flex items-center gap-3 pb-3">
                                    <div
                                        class="flex items-center justify-center size-12 rounded-full bg-slate-100 dark:bg-zink-600">
                                        <i data-lucide="wallet" class="size-5 text-slate-500 dark:text-zink-200"></i>
                                    </div>
                                    <div>
                                        <h6 class="text-lg">${{$job->salary}}</h6>
                                        <p class="text-slate-500 dark:text-zink-200">
                                            Salaire Mensuel
                                        </p>
                                    </div>
                                </div>
                                <div class="flex items-center gap-3 py-3">
                                    <div
                                        class="flex items-center justify-center size-12 rounded-full bg-slate-100 dark:bg-zink-600">
                                        <i data-lucide="goal" class="size-5 text-slate-500 dark:text-zink-200"></i>
                                    </div>
                                    <div>
                                        @if ($job->duration)
                                            <h6 class="text-lg">
                                                {{$job->duration}}
                                            </h6>
                                        @else
                                            <h6 class="text-lg">
                                                Indeterminée
                                            </h6>
                                        @endif
                                        
                                        <p class="text-slate-500 dark:text-zink-200">
                                            Durée
                                        </p>
                                    </div>
                                </div>
                                <div class="flex items-center gap-3 pt-3">
                                    <div
                                        class="flex items-center justify-center size-12 rounded-full bg-slate-100 dark:bg-zink-600">
                                        <i data-lucide="package" class="size-5 text-slate-500 dark:text-zink-200"></i>
                                    </div>
                                    <div>
                                        <h6 class="text-lg">
                                            {{$job->work_type}}
                                        </h6>
                                        <p class="text-slate-500 dark:text-zink-200">
                                            Type
                                        </p>
                                    </div>
                                </div>
                                <div class="flex items-center gap-3 pt-3">
                                    <div
                                        class="flex items-center justify-center size-12 rounded-full bg-slate-100 dark:bg-zink-600">
                                        <i data-lucide="package" class="size-5 text-slate-500 dark:text-zink-200"></i>
                                    </div>
                                    <div>
                                        <h6 class="text-lg">
                                            {{$job->contract_type}}
                                        </h6>
                                        <p class="text-slate-500 dark:text-zink-200">
                                            Type de Contrat
                                        </p>
                                    </div>
                                </div>
                                <div class="flex items-center gap-3 pt-3">
                                    <div
                                        class="flex items-center justify-center size-12 rounded-full bg-slate-100 dark:bg-zink-600">
                                        <i data-lucide="package" class="size-5 text-slate-500 dark:text-zink-200"></i>
                                    </div>
                                    <div>
                                        <h6 class="text-lg">
                                            {{$job->contract_type}}
                                        </h6>
                                        <p class="text-slate-500 dark:text-zink-200">
                                            Type de Contrat
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!--end card-->
                </div><!--end col-->
            </div><!--end grid-->
        </div>
    </div><!--end tab content-->

    <!-- Delete Modal -->
    @if ($job->candidates->count() > 0)
    <div id="deleteModal" modal-center
        class="fixed flex flex-col hidden transition-all duration-300 ease-in-out left-2/4 z-drawer -translate-x-2/4 -translate-y-2/4 show">
        <div class="w-screen md:w-[25rem] bg-white shadow rounded-md dark:bg-zink-600">
            <div class="max-h-[calc(theme('height.screen')_-_180px)] overflow-y-auto px-6 py-8">
                <div class="float-right">
                    <button data-modal-close="deleteModal"
                        class="transition-all duration-200 ease-linear text-slate-500 hover:text-red-500"><i
                            data-lucide="x" class="size-5"></i></button>
                </div>
                <img src="{{ URL::asset('build/images/delete.png') }}" alt="" class="block h-12 mx-auto">
                <div class="mt-5 text-center">
                    <h5 class="mb-1">Are you sure?</h5>
                    <p class="text-slate-500 dark:text-zink-200">Are you certain you want to delete this record?</p>
                    <div class="flex justify-center gap-2 mt-6">
                        <button type="reset" data-modal-close="deleteModal"
                            class="bg-white text-slate-500 btn hover:text-slate-500 hover:bg-slate-100 focus:text-slate-500 focus:bg-slate-100 active:text-slate-500 active:bg-slate-100 dark:bg-zink-600 dark:hover:bg-slate-500/10 dark:focus:bg-slate-500/10 dark:active:bg-slate-500/10">Cancel</button>
                        <form action="{{ route('jobs.destroy', $candidate->id) }}" method="POST" class="inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit"
                                class="text-white bg-red-500 border-red-500 btn hover:text-white hover:bg-red-600 hover:border-red-600 focus:text-white focus:bg-red-600 focus:border-red-600 focus:ring focus:ring-red-100 active:text-white active:bg-red-600 active:border-red-600 active:ring active:ring-red-100 dark:ring-custom-400/20">
                                Yes, Delete It!
                            </button>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif
@endsection
@push('scripts')
    <!-- apexcharts js -->
    <script src="{{ URL::asset('build/libs/apexcharts/apexcharts.min.js') }}"></script>
    <script src="{{ URL::asset('build/libs/dropzone/dropzone-min.js') }}"></script>
    <script src="{{ URL::asset('build/js/pages/pages-account.init.js') }}"></script>

    <!-- App js -->
    <script src="{{ URL::asset('build/js/app.js') }}"></script>
@endpush
