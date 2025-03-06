@extends('layouts.candidate.master')
@section('title')
    {{ __('t-profile-candidat-title') }}
@endsection
@section('content')

    
    <div class="mt-1 -ml-3 -mr-3 rounded-none card">
        <div class="card-body !px-2.5">
            <div class="grid grid-cols-1 gap-5 lg:grid-cols-12 2xl:grid-cols-12">
                <div class="lg:col-span-2 2xl:col-span-1">
                    <div class="relative inline-block size-20 rounded-full shadow-md bg-slate-100 overflow-hidden profile-user xl:size-28">
                        @if($user->profile_photo_path === "" || $user->profile_photo_path === null )
                        <img src="{{ URL::asset('build/images/users/avatar-1.png') }}" alt=""
                            class="object-cover border-0 rounded-full img-thumbnail user-profile-image">
                        @else
                        <img src="{{ asset('storage/' . $user->profile_photo_path ) }}" alt=""
                            class="object-cover border-0 rounded-full img-thumbnail user-profile-image w-100 h-100" >
                        @endif  
                    </div>
                </div><!--end col-->
                @if ($user->profile)
                    <div class="lg:col-span-10 2xl:col-span-9">
                        <h5 class="mb-1">{{ $user->name }} <i data-lucide="badge-check"
                                class="inline-block size-4 text-sky-500 fill-sky-100 dark:fill-custom-500/20"></i></h5>
                        <div class="flex gap-3 mb-4">
                            <p class="text-slate-500 dark:text-zink-200"><i data-lucide="user-circle"
                                    class="inline-block size-4 ltr:mr-1 rtl:ml-1 text-slate-500 dark:text-zink-200 fill-slate-100 dark:fill-zink-500"></i>
                                {{ $user->email }} </p>
                            <p class="text-slate-500 dark:text-zink-200"><i data-lucide="map-pin"
                                    class="inline-block size-4 ltr:mr-1 rtl:ml-1 text-slate-500 dark:text-zink-200 fill-slate-100 dark:fill-zink-500"></i>
                                @if ($user->profile?->location != '')
                                    {{ $user->profile?->location }}
                                @else
                                    {{ __('t-location') }}
                                @endif
                            </p>
                        </div>

                        <p class="mt-4 text-slate-500 dark:text-zink-200">
                            @if ($user->profile?->bio != '')
                                {{ $user->profile?->bio }}
                            @else
                                {{ __('t-overview-no-profile') }}
                            @endif
                        </p>
                        <div class="flex gap-2 mt-4">
                            <a href="{{ $user->profile?->twitter }}"
                                class="flex items-center justify-center transition-all duration-200 ease-linear rounded size-9 text-sky-500 bg-sky-100 hover:bg-sky-200 dark:bg-sky-500/20 dark:hover:bg-sky-500/30">
                                <i data-lucide="twitter" class="size-4"></i>
                            </a>

                            <a href="{{ $user->profile?->linkedin }}"
                                class="flex items-center justify-center transition-all duration-200 ease-linear rounded text-custom-500 bg-custom-100 size-9 hover:bg-custom-200 dark:bg-custom-500/20 dark:hover:bg-custom-500/30">
                                <i data-lucide="linkedin" class="size-4"></i>
                            </a>
                            <a href="{{ $user->profile?->github }}"
                                class="flex items-center justify-center transition-all duration-200 ease-linear rounded size-9 text-slate-500 bg-slate-100 hover:bg-slate-200 dark:bg-zink-600 dark:hover:bg-zink-500">
                                <i data-lucide="github" class="size-4"></i>
                            </a>
                        </div>
                    </div>
                @else
                    <div class="lg:col-span-10 2xl:col-span-9">
                        <h5 class="mb-1">{{ $user->name }} <i data-lucide="badge-check"
                                class="inline-block size-4 text-sky-500 fill-sky-100 dark:fill-custom-500/20"></i></h5>
                        <div class="flex gap-3 mb-4">
                            <p class="text-slate-500 dark:text-zink-200"><i data-lucide="user-circle"
                                    class="inline-block size-4 ltr:mr-1 rtl:ml-1 text-slate-500 dark:text-zink-200 fill-slate-100 dark:fill-zink-500"></i>
                                {{ $user->name }} </p>
                            <p class="text-slate-500 dark:text-zink-200"><i data-lucide="map-pin"
                                    class="inline-block size-4 ltr:mr-1 rtl:ml-1 text-slate-500 dark:text-zink-200 fill-slate-100 dark:fill-zink-500"></i>
                                {{ __('t-location') }}</p>
                        </div>

                        <p class="mt-4 text-slate-500 dark:text-zink-200">{{ __('t-overview-no-profile') }} </p>
                        <div class="flex gap-2 mt-4">
                            <a href="#"
                                class="flex items-center justify-center transition-all duration-200 ease-linear rounded size-9 text-sky-500 bg-sky-100 hover:bg-sky-200 dark:bg-sky-500/20 dark:hover:bg-sky-500/30">
                                <i data-lucide="twitter" class="size-4"></i>
                            </a>

                            <a href="#"
                                class="flex items-center justify-center transition-all duration-200 ease-linear rounded text-custom-500 bg-custom-100 size-9 hover:bg-custom-200 dark:bg-custom-500/20 dark:hover:bg-custom-500/30">
                                <i data-lucide="linkedin" class="size-4"></i>
                            </a>
                            <a href="#"
                                class="flex items-center justify-center transition-all duration-200 ease-linear rounded size-9 text-slate-500 bg-slate-100 hover:bg-slate-200 dark:bg-zink-600 dark:hover:bg-zink-500">
                                <i data-lucide="github" class="size-4"></i>
                            </a>
                        </div>
                    </div>
                @endif
            </div><!--end grid-->
        </div>
        <div class="card-body !px-2.5 !py-0">
            <ul class="flex flex-wrap w-full text-sm font-medium text-center nav-tabs">
                <li class="group active">
                    <a href="javascript:void(0);" data-tab-toggle data-target="overviewTabs"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">{{ __('t-overview') }}</a>
                </li>
                <li class="group">
                    <a href="javascript:void(0);" data-tab-toggle data-target="basiqueTab"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">{{ __('t-personnal-informations') }}</a>
                </li>
            </ul>
        </div>
    </div><!--end card-->

    <div class="tab-content">
        <div class="block tab-pane" id="overviewTabs">
            <div class="grid grid-cols-1 gap-x-5 2xl:grid-cols-12">
                <div class="2xl:col-span-9">
                    <div class="grid grid-cols-1 gap-x-5 xl:grid-cols-12">
                        <div class="xl:col-span-9">
                            <div class="card">
                                <div class="card-body">
                                    <h6 class="mb-3 text-15">{{ __('t-view-profil') }}</h6>
                                    <div id="recentStatistics" class="apex-charts"
                                        data-chart-colors='["bg-custom-500", "bg-purple-500"]' dir="ltr"></div>
                                </div>
                            </div>
                        </div><!--end col-->
                        <div class="text-center card bg-custom-500 xl:col-span-3">
                            <div class="flex flex-col h-full card-body">
                                <img src="{{ URL::asset('build/images/medal.png') }}" alt="" class="w-2/6 mx-auto">
                                <div class="mt-5 mb-auto">
                                    <h5 class="mb-1 text-white">{{ __('t-good-news') }}</h5>
                                    <p class="text-custom-200">{{ __('t-congratulation-message-1') }} {{ $user->name }}
                                        {{ __('t-congratulation-message-2') }}</p>
                                </div>
                                <div class="p-3 mt-5 rounded-md bg-custom-600">
                                    <h2 class="mb-1 text-white">1054</h2>
                                    <p class="text-custom-200">{{ __('t-congratulation-message-3') }}
                                    </p>
                                </div>
                            </div>
                        </div><!--end col-->
                    </div><!--end grid-->
                    @if ($user->profile)
                        <div class="card">
                            <div class="card-body">
                                <h6 class="mb-3 text-15">{{ __('t-bio') }}</h6>
                                <p class="mb-2 text-slate-500 dark:text-zink-200">
                                    @if ($user->profile?->bio != '')
                                        {{ $user->profile?->bio }}
                                    @else
                                        {{ __('t-overview-no-profile') }}
                                    @endif
                                </p>
                            </div>
                        </div>
                    @else
                        <div class="card">
                            <div class="card-body">
                                <h6 class="mb-3 text-15">{{ __('t-bio') }}</h6>
                                <p class="mb-2 text-slate-500 dark:text-zink-200">{{ __('t-overview-no-profile') }}</p>
                            </div>
                        </div>
                    @endif
                </div><!--end col-->
                <div class="2xl:col-span-3">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="mb-4 text-15">{{ __('t-personnal-informations') }}</h6>
                            <div class="overflow-x-auto">
                                <table class="w-full ltr:text-left rtl:ext-right">
                                    <tbody>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Designation</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">
                                                @if ($user->profile?->title != '')
                                                    {{ $user->profile?->title }}
                                                @else
                                                    {{ __('t-no-infomation') }}
                                                @endif
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Phone No</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">
                                                @if ($user->personne?->telephone != '')
                                                    {{ $user->personne?->telephone }}
                                                @else
                                                    {{ __('t-no-infomation') }}
                                                @endif
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Birth of Date</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">
                                                @if ($user->personne?->dateNaissance != '2007-02-25')
                                                    {{ $user->personne?->dateNaissance }}
                                                @else
                                                    {{ __('t-no-infomation') }}
                                                @endif
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Website</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">
                                                @if ($user->profile?->website != '')
                                                    <a href="{{ $user->profile?->website }}" target="_blank"
                                                        class="text-custom-500">{{ $user->profile?->website }}</a>
                                                @else
                                                    {{ __('t-no-infomation') }}
                                                @endif
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Email</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">
                                                {{ $user->email }}</td>
                                        </tr>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Location</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">
                                                @if ($user->profile?->location != '')
                                                    {{ $user->profile?->location }}
                                                @else
                                                    {{ __('t-no-infomation') }}
                                                @endif
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div><!--end card-->
                    <div class="card">
                    </div> <!--end card-->
                </div><!--end col-->
            </div><!--end grid-->
        </div><!--end tab pane-->
        <div class="hidden tab-pane" id="basiqueTab">
            <div class="overflow-x-auto">
                <div class="card">
                    <div class="card-body">
                        <form action="{{ route('candidate.store') }}" method="POST">
                            @csrf
                            <div class="grid grid-cols-1 gap-x-5 md:grid-cols-2 xl:grid-cols-2">
                                <div class="mb-4">
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">Prenom
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" name="prenom"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name"
                                        @if ($user->personne?->prenom != '') value="{{ $user->personne?->prenom }}" @endif
                                        required>
                                </div>
                                <div class="mb-4">
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">Nom
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" name="nom"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name"
                                        @if ($user->personne?->nom != '') value="{{ $user->personne?->nom }}" @endif
                                        required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Postnom
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" name="postNom"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name"
                                        @if ($user->personne?->postNom != '') value="{{ $user->personne?->postNom }}" @endif
                                        required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Mobile
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" name="telephone"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter your phone number"
                                        @if ($user->personne?->telephone != '') value="{{ $user->personne?->telephone }}" @endif
                                        required>
                                </div>
                                <div class="mb-4">
                                    <label for="cityInput" class="inline-block mb-2 text-base font-medium">Email <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" name="email"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        value="{{ $user->email }}" required disabled>
                                </div>
                                <div class="mb-4">
                                    <label for="stateInput" class="inline-block mb-2 text-base font-medium">Experiences
                                        <span class="text-red-500">*</span></label>
                                    <select
                                        class="form-select border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        name="experiences">
                                        <option selected="" disabled="" value="">Choisisez...</option>
                                        <option>1 an</option>
                                        <option>2 ans</option>
                                        <option>3 ans</option>
                                        <option>4 ans</option>
                                        <option>5 ans</option>
                                    </select>
                                </div>
                                <div class="mb-4">
                                    <label for="zipInput" class="inline-block mb-2 text-base font-medium">Expected
                                        salary
                                        <span class="text-red-500">*</span></label>
                                    <input type="number" name="salary"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter your salary"
                                        @if ($user->profile?->salary != '') value="{{ $user->profile?->salary }}" @endif>
                                </div>
                                <div class="mb-4">
                                    <label for="stateInput" class="inline-block mb-2 text-base font-medium">Highest
                                        Qualification Held <span class="text-red-500">*</span></label>
                                    <select
                                        class="form-select border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        name="qualification">
                                        <option selected="" disabled="" value="">Choisisez...</option>
                                        <option>Certificat primaire</option>
                                        <option>Diplome d'Etat</option>
                                        <option>Diplome de graduat</option>
                                        <option>Diplome de Licence</option>
                                        <option>Diplome de Doctorat</option>
                                    </select>
                                </div>
                            </div>
                            <div class="flex justify-end gap-2">
                                <button type="submit"
                                    class="text-white transition-all duration-200 ease-linear btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100">Mettre
                                    a jour</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!--end tab pane-->
        <div class="hidden tab-pane" id="academicTab">
            <div class="overflow-x-auto">
                <div class="card">
                    <div class="card-body">
                        <form action="{{ route('candidate.store') }}" method="POST" class="create-form23">
                            <div class="grid grid-cols-1 gap-x-5 md:grid-cols-2 xl:grid-cols-3">
                                <div class="mb-4">
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">First
                                        Name <span class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="Sophia" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Last Name
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="Bethany" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Username
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" id="UsernameInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Username" required>
                                </div>
                                <div class="mb-4">
                                    <label for="cityInput" class="inline-block mb-2 text-base font-medium">City <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="cityInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter city" required>
                                </div>
                                <div class="mb-4">
                                    <label for="stateInput" class="inline-block mb-2 text-base font-medium">State <span
                                            class="text-red-500">*</span></label>
                                    <select
                                        class="form-select border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        id="stateInput" required>
                                        <option selected="" disabled="" value="">Choose...</option>
                                        <option>Name</option>
                                    </select>
                                </div>
                                <div class="mb-4">
                                    <label for="zipInput" class="inline-block mb-2 text-base font-medium">Zip <span
                                            class="text-red-500">*</span></label>
                                    <input type="number" id="zipInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter zip code" required>
                                </div>
                            </div>
                            <div class="flex justify-end gap-2">
                                <button type="button"
                                    class="text-red-500 bg-white btn hover:text-red-500 hover:bg-red-100 focus:text-red-500 focus:bg-red-100 active:text-red-500 active:bg-red-100 dark:bg-zink-700 dark:hover:bg-red-500/10 dark:focus:bg-red-500/10 dark:active:bg-red-500/10"><i
                                        data-lucide="x" class="inline-block size-4"></i> <span
                                        class="align-middle">Cancel</span></button>
                                <button type="submit"
                                    class="text-white transition-all duration-200 ease-linear btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!--end tab pane-->
        <div class="hidden tab-pane" id="ExperienceTab">
            <div class="overflow-x-auto">
                <div class="card">
                    <div class="card-body">
                        <form action="#!">
                            <div class="grid grid-cols-1 gap-x-5 md:grid-cols-2 xl:grid-cols-3">
                                <div class="mb-4">
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">First
                                        Name <span class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="Sophia" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Last Name
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="Bethany" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Username
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" id="UsernameInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Username" required>
                                </div>
                                <div class="mb-4">
                                    <label for="cityInput" class="inline-block mb-2 text-base font-medium">City <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="cityInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter city" required>
                                </div>
                                <div class="mb-4">
                                    <label for="stateInput" class="inline-block mb-2 text-base font-medium">State <span
                                            class="text-red-500">*</span></label>
                                    <select
                                        class="form-select border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        id="stateInput" required>
                                        <option selected="" disabled="" value="">Choose...</option>
                                        <option>Name</option>
                                    </select>
                                </div>
                                <div class="mb-4">
                                    <label for="zipInput" class="inline-block mb-2 text-base font-medium">Zip <span
                                            class="text-red-500">*</span></label>
                                    <input type="number" id="zipInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter zip code" required>
                                </div>
                            </div>
                            <div class="flex justify-end gap-2">
                                <button type="button"
                                    class="text-red-500 bg-white btn hover:text-red-500 hover:bg-red-100 focus:text-red-500 focus:bg-red-100 active:text-red-500 active:bg-red-100 dark:bg-zink-700 dark:hover:bg-red-500/10 dark:focus:bg-red-500/10 dark:active:bg-red-500/10"><i
                                        data-lucide="x" class="inline-block size-4"></i> <span
                                        class="align-middle">Cancel</span></button>
                                <button type="submit"
                                    class="text-white transition-all duration-200 ease-linear btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!--end tab pane-->
        <div class="hidden tab-pane" id="competenceTab">
            <div class="overflow-x-auto">
                <div class="card">
                    <div class="card-body">

                        <form action="#!">
                            <div class="grid grid-cols-1 gap-x-5 md:grid-cols-2 xl:grid-cols-3">
                                <div class="mb-4">
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">First
                                        Name <span class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="Sophia" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Last Name
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="Bethany" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Username
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" id="UsernameInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Username" required>
                                </div>
                                <div class="mb-4">
                                    <label for="cityInput" class="inline-block mb-2 text-base font-medium">City <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="cityInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter city" required>
                                </div>
                                <div class="mb-4">
                                    <label for="stateInput" class="inline-block mb-2 text-base font-medium">State <span
                                            class="text-red-500">*</span></label>
                                    <select
                                        class="form-select border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        id="stateInput" required>
                                        <option selected="" disabled="" value="">Choose...</option>
                                        <option>Name</option>
                                    </select>
                                </div>
                                <div class="mb-4">
                                    <label for="zipInput" class="inline-block mb-2 text-base font-medium">Zip <span
                                            class="text-red-500">*</span></label>
                                    <input type="number" id="zipInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter zip code" required>
                                </div>
                            </div>
                            <div class="flex justify-end gap-2">
                                <button type="button"
                                    class="text-red-500 bg-white btn hover:text-red-500 hover:bg-red-100 focus:text-red-500 focus:bg-red-100 active:text-red-500 active:bg-red-100 dark:bg-zink-700 dark:hover:bg-red-500/10 dark:focus:bg-red-500/10 dark:active:bg-red-500/10"><i
                                        data-lucide="x" class="inline-block size-4"></i> <span
                                        class="align-middle">Cancel</span></button>
                                <button type="submit"
                                    class="text-white transition-all duration-200 ease-linear btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!--end tab pane-->
        <div class="hidden tab-pane" id="adresseTab">
            <div class="overflow-x-auto">
                <div class="card">
                    <div class="card-body">
                        <form action="#!">
                            <div class="grid grid-cols-1 gap-x-5 md:grid-cols-2 xl:grid-cols-3">
                                <div class="mb-4">
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">First
                                        Name <span class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="Sophia" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Last Name
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="Bethany" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Username
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" id="UsernameInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Username" required>
                                </div>
                                <div class="mb-4">
                                    <label for="cityInput" class="inline-block mb-2 text-base font-medium">City <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="cityInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter city" required>
                                </div>
                                <div class="mb-4">
                                    <label for="stateInput" class="inline-block mb-2 text-base font-medium">State <span
                                            class="text-red-500">*</span></label>
                                    <select
                                        class="form-select border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        id="stateInput" required>
                                        <option selected="" disabled="" value="">Choose...</option>
                                        <option>Name</option>
                                    </select>
                                </div>
                                <div class="mb-4">
                                    <label for="zipInput" class="inline-block mb-2 text-base font-medium">Zip <span
                                            class="text-red-500">*</span></label>
                                    <input type="number" id="zipInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter zip code" required>
                                </div>
                            </div>
                            <div class="flex justify-end gap-2">
                                <button type="button"
                                    class="text-red-500 bg-white btn hover:text-red-500 hover:bg-red-100 focus:text-red-500 focus:bg-red-100 active:text-red-500 active:bg-red-100 dark:bg-zink-700 dark:hover:bg-red-500/10 dark:focus:bg-red-500/10 dark:active:bg-red-500/10"><i
                                        data-lucide="x" class="inline-block size-4"></i> <span
                                        class="align-middle">Cancel</span></button>
                                <button type="submit"
                                    class="text-white transition-all duration-200 ease-linear btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!--end tab pane-->
        <div class="hidden tab-pane" id="actualJobTab">
            <div class="overflow-x-auto">
                <div class="card">
                    <div class="card-body">
                        <form action="#!">
                            <div class="grid grid-cols-1 gap-x-5 md:grid-cols-2 xl:grid-cols-3">
                                <div class="mb-4">
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">First
                                        Name <span class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="Sophia" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Last Name
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="Bethany" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Username
                                        <span class="text-red-500">*</span></label>
                                    <input type="text" id="UsernameInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Username" required>
                                </div>
                                <div class="mb-4">
                                    <label for="cityInput" class="inline-block mb-2 text-base font-medium">City <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="cityInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter city" required>
                                </div>
                                <div class="mb-4">
                                    <label for="stateInput" class="inline-block mb-2 text-base font-medium">State <span
                                            class="text-red-500">*</span></label>
                                    <select
                                        class="form-select border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        id="stateInput" required>
                                        <option selected="" disabled="" value="">Choose...</option>
                                        <option>Name</option>
                                    </select>
                                </div>
                                <div class="mb-4">
                                    <label for="zipInput" class="inline-block mb-2 text-base font-medium">Zip <span
                                            class="text-red-500">*</span></label>
                                    <input type="number" id="zipInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter zip code" required>
                                </div>
                            </div>
                            <div class="flex justify-end gap-2">
                                <button type="button"
                                    class="text-red-500 bg-white btn hover:text-red-500 hover:bg-red-100 focus:text-red-500 focus:bg-red-100 active:text-red-500 active:bg-red-100 dark:bg-zink-700 dark:hover:bg-red-500/10 dark:focus:bg-red-500/10 dark:active:bg-red-500/10"><i
                                        data-lucide="x" class="inline-block size-4"></i> <span
                                        class="align-middle">Cancel</span></button>
                                <button type="submit"
                                    class="text-white transition-all duration-200 ease-linear btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div><!--end tab pane-->

        @if (Session::has('alert.sweetalert'))
            <script>
                Swal.fire({!! Session::pull('alert.sweetalert') !!});
            </script>
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
