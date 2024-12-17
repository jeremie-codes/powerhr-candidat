@extends('layouts.candidate.master')
@section('title')
    {{ __('Account') }}
@endsection
@section('content')
    <div class="mt-1 -ml-3 -mr-3 rounded-none card">
        <div class="card-body !px-2.5">
            <div class="grid grid-cols-1 gap-5 lg:grid-cols-12 2xl:grid-cols-12">
                <div class="lg:col-span-2 2xl:col-span-1">
                    <div
                        class="relative inline-block size-20 rounded-full shadow-md bg-slate-100 profile-user xl:size-28">
                        <img src="{{ URL::asset('build/images/users/avatar-1.png') }}" alt=""
                            class="object-cover border-0 rounded-full img-thumbnail user-profile-image">
                        <div
                            class="absolute bottom-0 flex items-center justify-center size-8 rounded-full ltr:right-0 rtl:left-0 profile-photo-edit">
                            <input id="profile-img-file-input" type="file" class="hidden profile-img-file-input">
                            <label for="profile-img-file-input"
                                class="flex items-center justify-center size-8 bg-white rounded-full shadow-lg cursor-pointer dark:bg-zink-600 profile-photo-edit">
                                <i data-lucide="image-plus"
                                    class="size-4 text-slate-500 dark:text-zink-200 fill-slate-100 dark:fill-zink-500"></i>
                            </label>
                        </div>
                    </div>
                </div><!--end col-->
                <div class="lg:col-span-10 2xl:col-span-9">
                    <h5 class="mb-1">{{ Auth::user()->name }} <i data-lucide="badge-check"
                            class="inline-block size-4 text-sky-500 fill-sky-100 dark:fill-custom-500/20"></i></h5>
                    <div class="flex gap-3 mb-4">
                        <p class="text-slate-500 dark:text-zink-200"><i data-lucide="user-circle"
                                class="inline-block size-4 ltr:mr-1 rtl:ml-1 text-slate-500 dark:text-zink-200 fill-slate-100 dark:fill-zink-500"></i>
                                {{ Auth::user()->name }} </p>
                        <p class="text-slate-500 dark:text-zink-200"><i data-lucide="map-pin"
                                class="inline-block size-4 ltr:mr-1 rtl:ml-1 text-slate-500 dark:text-zink-200 fill-slate-100 dark:fill-zink-500"></i>
                                {{ Auth::user()->profile->location }} </p>
                    </div>
                    
                    <p class="mt-4 text-slate-500 dark:text-zink-200">{{ Auth::user()->profile->bio }}</p>
                    <div class="flex gap-2 mt-4">
                        <a href="{{ Auth::user()->profile->twitter }}"
                            class="flex items-center justify-center transition-all duration-200 ease-linear rounded size-9 text-sky-500 bg-sky-100 hover:bg-sky-200 dark:bg-sky-500/20 dark:hover:bg-sky-500/30">
                            <i data-lucide="twitter" class="size-4"></i>
                        </a>
                        
                        <a href="{{ Auth::user()->profile->linkedin }}"
                            class="flex items-center justify-center transition-all duration-200 ease-linear rounded text-custom-500 bg-custom-100 size-9 hover:bg-custom-200 dark:bg-custom-500/20 dark:hover:bg-custom-500/30">
                            <i data-lucide="linkedin" class="size-4"></i>
                        </a>
                        <a href="{{ Auth::user()->profile->github }}"
                            class="flex items-center justify-center transition-all duration-200 ease-linear rounded size-9 text-slate-500 bg-slate-100 hover:bg-slate-200 dark:bg-zink-600 dark:hover:bg-zink-500">
                            <i data-lucide="github" class="size-4"></i>
                        </a>
                    </div>
                </div>
            </div><!--end grid-->
        </div>
        <div class="card-body !px-2.5 !py-0">
            <ul class="flex flex-wrap w-full text-sm font-medium text-center nav-tabs">
                <li class="group active">
                    <a href="javascript:void(0);" data-tab-toggle data-target="overviewTabs"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">Vue d'ensemble</a>
                </li>
                <li class="group">
                    <a href="javascript:void(0);" data-tab-toggle data-target="basiqueTab"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">Informations basiques</a>
                </li>
                <li class="group">
                    <a href="javascript:void(0);" data-tab-toggle data-target="academicTab"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">Informations academique</a>
                </li>
                <li class="group">
                    <a href="javascript:void(0);" data-tab-toggle data-target="ExperienceTab"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">Experiences</a>
                </li>
                <li class="group">
                    <a href="javascript:void(0);" data-tab-toggle data-target="competenceTab"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">Competences</a>
                </li>
                <li class="group">
                    <a href="javascript:void(0);" data-tab-toggle data-target="adresseTab"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">Adresse</a>
                </li>
                <li class="group">
                    <a href="javascript:void(0);" data-tab-toggle data-target="actualJobTab"
                        class="inline-block px-4 py-2 text-base transition-all duration-300 ease-linear rounded-t-md text-slate-500 dark:text-zink-200 border-b border-transparent group-[.active]:text-custom-500 dark:group-[.active]:text-custom-500 group-[.active]:border-b-custom-500 dark:group-[.active]:border-b-custom-500 hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]">Emploi actuel</a>
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
                                    <h6 class="mb-3 text-15">Consultation du profil</h6>
                                    <div id="recentStatistics" class="apex-charts"
                                        data-chart-colors='["bg-custom-500", "bg-purple-500"]' dir="ltr"></div>
                                </div>
                            </div>
                        </div><!--end col-->
                        <div class="text-center card bg-custom-500 xl:col-span-3">
                            <div class="flex flex-col h-full card-body">
                                <img src="{{ URL::asset('build/images/medal.png') }}" alt=""
                                    class="w-2/6 mx-auto">
                                <div class="mt-5 mb-auto">
                                    <h5 class="mb-1 text-white">Bonne nouvelle</h5>
                                    <p class="text-custom-200">Felicitations  {{ Auth::user()->name }} votre profil a ete vue autant de fois.</p>
                                </div>
                                <div class="p-3 mt-5 rounded-md bg-custom-600">
                                    <h2 class="mb-1 text-white">1054</h2>
                                    <p class="text-custom-200">Ne perdez pas espoir. Nous trouverons un emploi pour vous.</p>
                                </div>
                            </div>
                        </div><!--end col-->
                    </div><!--end grid-->
                    <div class="card">
                        <div class="card-body">
                            <h6 class="mb-3 text-15">Biographie</h6>
                            <p class="mb-2 text-slate-500 dark:text-zink-200">{{ Auth::user()->profile->bio }}</p>
                        </div>
                    </div>
                </div><!--end col-->
                <div class="2xl:col-span-3">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="mb-4 text-15">Personal Information</h6>
                            <div class="overflow-x-auto">
                                <table class="w-full ltr:text-left rtl:ext-right">
                                    <tbody>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Designation</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">{{ Auth::user()->profile->title }}
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Phone No</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">{{ Auth::user()->personne->telephone }}</td>
                                        </tr>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Birth of Date</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">{{ Auth::user()->personne->dateNaissance }}</td>
                                        </tr>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Website</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200"><a
                                                    href="{{ Auth::user()->profile->website }}" target="_blank"
                                                    class="text-custom-500">{{ Auth::user()->profile->website }}</a></td>
                                        </tr>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Email</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">
                                                {{ Auth::user()->email }}</td>
                                        </tr>
                                        <tr>
                                            <th class="py-2 font-semibold ps-0" scope="row">Location</th>
                                            <td class="py-2 text-right text-slate-500 dark:text-zink-200">{{ Auth::user()->profile->location }}</td>
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
                        <form action="#!">
                            <div class="grid grid-cols-1 gap-x-5 md:grid-cols-2 xl:grid-cols-2">
                                <div class="mb-4">
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">Prenom <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="{{ Auth::user()->personne->prenom }}" required>
                                </div>
                                <div class="mb-4">
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">Nom <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="{{ Auth::user()->personne->nom }}" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Postnom <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="{{ Auth::user()->personne->postNom }}" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Mobile <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="UsernameInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        value="{{ Auth::user()->personne->telephone }}" required>
                                </div>
                                <div class="mb-4">
                                    <label for="cityInput" class="inline-block mb-2 text-base font-medium">Email <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="cityInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        value="{{ Auth::user()->email }}" required>
                                </div>
                                <div class="mb-4">
                                    <label for="stateInput" class="inline-block mb-2 text-base font-medium">Experiences <span
                                            class="text-red-500">*</span></label>
                                    <select
                                        class="form-select border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        id="stateInput" required>
                                        <option selected="" disabled="" value="">Choisisez...</option>
                                        <option>1 an</option>
                                        <option>2 ans</option>
                                        <option>3 ans</option>
                                        <option>4 ans</option>
                                        <option>5 ans</option>
                                    </select>
                                </div>
                                <div class="mb-4">
                                    <label for="zipInput" class="inline-block mb-2 text-base font-medium">Expected salary <span
                                            class="text-red-500">*</span></label>
                                    <input type="number" id="zipInput"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"

                                        placeholder="Salary">
                                </div>
                                <div class="mb-4">
                                    <label for="stateInput" class="inline-block mb-2 text-base font-medium">Highest Qualification Held <span
                                            class="text-red-500">*</span></label>
                                    <select
                                        class="form-select border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        id="stateInput" required>
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
                                    class="text-white transition-all duration-200 ease-linear btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100">Mettre a jour</button>
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
                        <form action="#!">
                            <div class="grid grid-cols-1 gap-x-5 md:grid-cols-2 xl:grid-cols-3">
                                <div class="mb-4">
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">First Name <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="Sophia" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Last Name <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="Bethany" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Username <span
                                            class="text-red-500">*</span></label>
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
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">First Name <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="Sophia" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Last Name <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="Bethany" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Username <span
                                            class="text-red-500">*</span></label>
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
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">First Name <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="Sophia" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Last Name <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="Bethany" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Username <span
                                            class="text-red-500">*</span></label>
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
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">First Name <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="Sophia" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Last Name <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="Bethany" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Username <span
                                            class="text-red-500">*</span></label>
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
                                    <label for="firstNameInput2" class="inline-block mb-2 text-base font-medium">First Name <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="firstNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter First Name" value="Sophia" required>
                                </div>
                                <div class="mb-4">
                                    <label for="lastNameInput2" class="inline-block mb-2 text-base font-medium">Last Name <span
                                            class="text-red-500">*</span></label>
                                    <input type="text" id="lastNameInput2"
                                        class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                                        placeholder="Enter Last Name" value="Bethany" required>
                                </div>
                                <div class="mb-4">
                                    <label for="UsernameInput" class="inline-block mb-2 text-base font-medium">Username <span
                                            class="text-red-500">*</span></label>
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
    </div>
@endsection
@push('scripts')
    <!-- apexcharts js -->
    <script src="{{ URL::asset('build/libs/apexcharts/apexcharts.min.js') }}"></script>
    <script src="{{ URL::asset('build/libs/dropzone/dropzone-min.js') }}"></script>
    <script src="{{ URL::asset('build/js/pages/pages-account.init.js') }}"></script>

    <!-- App js -->
    <script src="{{ URL::asset('build/js/app.js') }}"></script>
@endpush
