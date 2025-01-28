@extends('layouts.candidate.master')
@section('title')
    {{ __('Event') }}
@endsection
@section('content')
    <!-- page title -->
    <x-page-title title="Offres" pagetitle="Tableau de board" />

    <div class="grid grid-cols-1 xl:grid-cols-12 gap-x-5">
        <div class="xl:col-span-3">
            <div class="card">
                <div class="card-body">
                    <div class="flex items-center gap-3 mb-5">
                        <div class="rounded-full bg-slate-100 dark:bg-zink-600 shrink-0">
                            <img src="{{ URL::asset('build/images/users/avatar-1.png') }}" alt=""
                                class="rounded-full h-14">
                        </div>
                        <div class="grow">
                            <h6 class="mb-1 text-15">{{ $user->name }}<i data-lucide="badge-check"
                                    class="inline-block size-4 text-sky-500 fill-sky-100 dark:fill-sky-500/20"></i></h6>
                            <p class="text-slate-500 dark:text-zink-200">{{ $user->email }} </p>
                        </div>
                    </div>
                </div>
            </div><!--end card-->
            <div class="card">
                <div class="card-body">
                    <ul class="flex flex-col w-full gap-2 mb-4 text-sm font-medium shrink-0 nav-tabs">
                        <li class="group grow">
                            <a href="{{ url('offres?filter=*') }}"
                                class="inline-block px-4 w-full py-2 text-base transition-all duration-300 ease-linear rounded-md text-slate-500 dark:text-zink-200 border border-transparent group-[.active]:bg-custom-500 dark:group-[.active]:bg-custom-500 group-[.active]:text-white dark:group-[.active]:text-white hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]"><i
                                    data-lucide="briefcase" class="inline-block size-4 align-middle ltr:mr-1 rtl:ml-1"></i>
                                <span class="align-middle">Tous</span></a>
                        </li>
                        <li class="group grow">
                            <a href="{{ url('offres?filter=Relation%public') }}"
                                class="inline-block px-4 w-full py-2 text-base transition-all duration-300 ease-linear rounded-md text-slate-500 dark:text-zink-200 border border-transparent group-[.active]:bg-custom-500 dark:group-[.active]:bg-custom-500 group-[.active]:text-white dark:group-[.active]:text-white hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]"><i
                                    data-lucide="airplay" class="inline-block size-4 align-middle ltr:mr-1 rtl:ml-1"></i>
                                <span class="align-middle">Relation public</span></a>
                        </li>
                        <li class="group grow">
                            <a href="{{ url('offres?filter=Informatique') }}"
                                class="inline-block px-4 w-full py-2 text-base transition-all duration-300 ease-linear rounded-md text-slate-500 dark:text-zink-200 border border-transparent group-[.active]:bg-custom-500 dark:group-[.active]:bg-custom-500 group-[.active]:text-white dark:group-[.active]:text-white hover:text-custom-500 dark:hover:text-custom-500 active:text-custom-500 dark:active:text-custom-500 -mb-[1px]"><i
                                    data-lucide="airplay" class="inline-block size-4 align-middle ltr:mr-1 rtl:ml-1"></i>
                                <span class="align-middle">Informatique</span></a>
                        </li>
                    </ul>

                </div>
            </div><!--end card-->
        </div><!--end-->
        <div class="xl:col-span-9" id="eventList">
            <div class="grid items-center grid-cols-1 gap-4 mb-4 xl:grid-cols-12">
                {{-- <div class="xl:col-span-3">
                    <h6 class="mb-0 text-15">Upcoming Events</h6>
                </div> --}}
                <div class="flex gap-2 xl:col-span-4 xl:col-start-9">
                    <div class="relative grow">
                        <input type="text"
                            class="ltr:pl-8 rtl:pr-8 search form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                            placeholder="Rechercher ..." autocomplete="off">
                        <i data-lucide="search"
                            class="inline-block size-4 absolute ltr:left-2.5 rtl:right-2.5 top-2.5 text-slate-500 dark:text-zink-200 fill-slate-100 dark:fill-zink-600"></i>
                    </div>
                </div>
            </div>
            <div
                class="px-4 py-3 mb-4 text-sm text-green-500 border border-green-200 rounded-md bg-green-50 dark:bg-green-400/20 dark:border-green-500/50">
                <span class="font-bold">Consulter tout nos offres, </span> qui pourront vous interressés
                <a href="#!" class="px-2.5 py-0.5 text-xs font-medium inline-block rounded border transition-all duration-200 ease-linear bg-green-100 border-transparent text-green-500 hover:bg-green-200 dark:bg-green-400/20 dark:hover:bg-green-400/30 dark:border-transparent ltr:ml-1 rtl:mr-1">
                    mainteneant !</a>
            </div>
            <div class="overflow-x-auto">
                <table class="w-full border-separate table-custom border-spacing-y-2 whitespace-nowrap">
                    <thead class="ltr:text-left rtl:text-right">
                        <tr
                            class="relative bg-white rounded-md after:absolute ltr:after:border-l-2 rtl:after:border-r-2 ltr:after:left-0 rtl:after:right-0 after:top-0 after:bottom-0 after:border-transparent dark:bg-zink-700">
                            <th class="px-3.5 py-2.5 font-semibold sort" data-sort="event_name">Titre de l'offre</th>
                            <th class="px-3.5 py-2.5 font-semibold sort" data-sort="start_date">Date publiée</th>
                            <th class="px-3.5 py-2.5 font-semibold sort" data-sort="end_date">Date expiration</th>
                            <th class="px-3.5 py-2.5 font-semibold sort" data-sort="number">Lieu d'affectation</th>
                            <th class="px-3.5 py-2.5 font-semibold sort" data-sort="status">Status</th>
                            <th class="px-3.5 py-2.5 font-semibold">Action</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        <tr
                            class="relative bg-white rounded-md after:absolute ltr:after:border-l-2 rtl:after:border-r-2 ltr:after:left-0 rtl:after:right-0 after:top-0 after:bottom-0 after:border-transparent dark:bg-zink-700">
                            <td class="px-3.5 py-2.5 event_name">Rélation public</td>
                            <td class="px-3.5 py-2.5 start_date">03 Juin, 2025</td>
                            <td class="px-3.5 py-2.5 end_date">15 Juin, 2025</td>
                            <td class="px-3.5 py-2.5 total">Kinshasa</td>
                            <td class="px-3.5 py-2.5"><span
                                    class="px-2.5 py-0.5 text-xs inline-block font-medium rounded border bg-red-100 border-red-200 text-red-500 dark:bg-red-500/20 dark:border-red-500/20 status">Expiré</span>
                            </td>
                            <td class="px-3.5 py-2.5">
                                <div class="relative dropdown">
                                     <a class="items-center justify-center size-[30px] dropdown-toggle p-0 text-slate-500 btn bg-slate-100 hover:text-white hover:bg-slate-600 focus:text-white focus:bg-slate-600 focus:ring focus:ring-slate-100 active:text-white active:bg-slate-600 active:ring active:ring-slate-100 dark:bg-slate-500/20 dark:text-slate-400 dark:hover:bg-slate-500 dark:hover:text-white dark:focus:bg-slate-500 dark:focus:text-white dark:active:bg-slate-500 dark:active:text-white dark:ring-slate-400/20"
                                            href="#!">
                                            <i data-lucide="eye" class="inline-block size-3"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <tr
                            class="relative bg-white rounded-md after:absolute ltr:after:border-l-2 rtl:after:border-r-2 ltr:after:left-0 rtl:after:right-0 after:top-0 after:bottom-0 after:border-transparent dark:bg-zink-700">
                            <td class="px-3.5 py-2.5 event_name">Dévveloppeur Web</td>
                            <td class="px-3.5 py-2.5 start_date">03 Juin, 2025</td>
                            <td class="px-3.5 py-2.5 end_date">15 Juin, 2025</td>
                            <td class="px-3.5 py-2.5 total">Kinshasa</td>
                            <td class="px-3.5 py-2.5"><span
                                    class="px-2.5 py-0.5 text-xs inline-block font-medium rounded border bg-orange-100 border-orange-200 text-orange-500 dark:bg-orange-500/20 dark:border-orange-500/20 status">En Cours</span>
                            </td>
                            <td class="px-3.5 py-2.5">
                                <div class="relative dropdown">
                                     <a class="items-center justify-center size-[30px] dropdown-toggle p-0 text-slate-500 btn bg-slate-100 hover:text-white hover:bg-slate-600 focus:text-white focus:bg-slate-600 focus:ring focus:ring-slate-100 active:text-white active:bg-slate-600 active:ring active:ring-slate-100 dark:bg-slate-500/20 dark:text-slate-400 dark:hover:bg-slate-500 dark:hover:text-white dark:focus:bg-slate-500 dark:focus:text-white dark:active:bg-slate-500 dark:active:text-white dark:ring-slate-400/20"
                                            href="#!">
                                            <i data-lucide="eye" class="inline-block size-3"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <tr
                            class="relative bg-white rounded-md after:absolute ltr:after:border-l-2 rtl:after:border-r-2 ltr:after:left-0 rtl:after:right-0 after:top-0 after:bottom-0 after:border-transparent dark:bg-zink-700">
                            <td class="px-3.5 py-2.5 event_name">Dévveloppeur Full Stack</td>
                            <td class="px-3.5 py-2.5 start_date">03 Juin, 2025</td>
                            <td class="px-3.5 py-2.5 end_date">15 Juin, 2025</td>
                            <td class="px-3.5 py-2.5 total">Lubumbashi</td>
                            <td class="px-3.5 py-2.5"><span
                                    class="px-2.5 py-0.5 text-xs inline-block font-medium rounded border bg-orange-100 border-orange-200 text-orange-500 dark:bg-orange-500/20 dark:border-orange-500/20 status">En Cours</span>
                            </td>
                            <td class="px-3.5 py-2.5">
                                <div class="relative dropdown">
                                     <a class="items-center justify-center size-[30px] dropdown-toggle p-0 text-slate-500 btn bg-slate-100 hover:text-white hover:bg-slate-600 focus:text-white focus:bg-slate-600 focus:ring focus:ring-slate-100 active:text-white active:bg-slate-600 active:ring active:ring-slate-100 dark:bg-slate-500/20 dark:text-slate-400 dark:hover:bg-slate-500 dark:hover:text-white dark:focus:bg-slate-500 dark:focus:text-white dark:active:bg-slate-500 dark:active:text-white dark:ring-slate-400/20"
                                            href="#!">
                                            <i data-lucide="eye" class="inline-block size-3"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="flex justify-center mt-3 mb-5">
                <button type="button"
                    class="flex items-center text-white btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100 dark:ring-custom-400/20">
                    <svg class="size-4 ltr:mr-2 rtl:ml-2 animate-spin" xmlns="http://www.w3.org/2000/svg" fill="none"
                        viewBox="0 0 24 24">
                        <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor"
                            stroke-width="4"></circle>
                        <path class="opacity-75" fill="currentColor"
                            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z">
                        </path>
                    </svg>
                    Load More
                </button>
            </div>
        </div><!--end-->
    </div><!--end-->



    <div id="eventModal" modal-center
        class="fixed flex flex-col hidden transition-all duration-300 ease-in-out left-2/4 z-drawer -translate-x-2/4 -translate-y-2/4 show">
        <div class="w-screen md:w-[30rem] bg-white shadow rounded-md dark:bg-zink-600 flex flex-col h-full">
            <div class="flex items-center justify-between p-4 border-b dark:border-zink-500">
                <h5 class="text-16">Create a Event</h5>
                <button data-modal-close="eventModal"
                    class="transition-all duration-200 ease-linear text-slate-400 hover:text-red-500"><i data-lucide="x"
                        class="size-5"></i></button>
            </div>
            <div class="max-h-[calc(theme('height.screen')_-_180px)] p-4 overflow-y-auto">
                <form action="#!">
                    <div class="mb-4">
                        <label for="eventTitle" class="inline-block mb-2 text-base font-medium">Title</label>
                        <input type="text" id="eventTitle"
                            class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                            placeholder="Event title">
                    </div>
                    <div class="mb-4">
                        <label for="eventDateInput" class="inline-block mb-2 text-base font-medium">Event Date</label>
                        <input type="text"
                            class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200 flatpickr-input"
                            id="eventDateInput" data-provider="flatpickr" data-date-format="d M, Y" readonly="readonly"
                            placeholder="Select Date">
                    </div>
                    <div class="mb-4">
                        <label for="eventTimeInput" class="inline-block mb-2 text-base font-medium">Event Date</label>
                        <input type="text"
                            class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200 flatpickr-input"
                            id="eventTimeInput" data-provider="timepickr" data-time-basic="true"
                            placeholder="Select Time">
                    </div>
                    <div class="mb-4">
                        <label for="totalSeat" class="inline-block mb-2 text-base font-medium">Total Seat</label>
                        <input
                            class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                            id="totalSeat" type="number" placeholder="0">
                    </div>
                    <div class="mb-4">
                        <label for="statusSelect" class="inline-block mb-2 text-base font-medium">Status</label>
                        <select
                            class="form-input border-slate-200 dark:border-zink-500 focus:outline-none focus:border-custom-500 disabled:bg-slate-100 dark:disabled:bg-zink-600 disabled:border-slate-300 dark:disabled:border-zink-500 dark:disabled:text-zink-200 disabled:text-slate-500 dark:text-zink-100 dark:bg-zink-700 dark:focus:border-custom-800 placeholder:text-slate-400 dark:placeholder:text-zink-200"
                            id="statusSelect" name="statusSelect" data-choices data-choices-search-false>
                            <option value="Ongoing">Ongoing</option>
                            <option value="Draft">Draft</option>
                            <option value="Closed">Closed</option>
                        </select>
                    </div>
                    <div class="text-right">
                        <button type="submit"
                            class="text-white transition-all duration-200 ease-linear btn bg-custom-500 border-custom-500 hover:text-white hover:bg-custom-600 hover:border-custom-600 focus:text-white focus:bg-custom-600 focus:border-custom-600 focus:ring focus:ring-custom-100 active:text-white active:bg-custom-600 active:border-custom-600 active:ring active:ring-custom-100 dark:ring-custom-400/20">Create
                            Event</button>
                    </div>
                </form>
            </div>
        </div>
    </div><!--end create modal-->

    <div id="deleteModal" modal-center
        class="fixed flex flex-col hidden transition-all duration-300 ease-in-out left-2/4 z-drawer -translate-x-2/4 -translate-y-2/4 show">
        <div class="w-screen md:w-[25rem] bg-white shadow rounded-md dark:bg-zink-600">
            <div class="h-full px-6 py-8">
                <div class="float-right">
                    <button data-modal-close="deleteModal"
                        class="transition-all duration-200 ease-linear text-slate-400 hover:text-red-500"><i
                            data-lucide="x" class="size-5"></i></button>
                </div>
                <img src="{{ URL::asset('build/images/delete.png') }}" alt="" class="block h-12 mx-auto">
                <div class="mt-5 text-center">
                    <h5 class="mb-1">Are you sure?</h5>
                    <p class="text-slate-500 dark:text-zink-200">Are you certain you want to delete this record?</p>
                    <div class="flex justify-center gap-2 mt-6">
                        <button type="reset" data-modal-close="deleteModal"
                            class="transition-all duration-200 ease-linear bg-white border-white text-slate-500 btn hover:text-slate-600 focus:text-slate-600 active:text-slate-600 dark:bg-zink-500 dark:border-zink-500">Cancel</button>
                        <button type="submit"
                            class="text-white transition-all duration-200 ease-linear bg-red-500 border-red-500 btn hover:text-white hover:bg-red-600 hover:border-red-600 focus:text-white focus:bg-red-600 focus:border-red-600 focus:ring focus:ring-red-100 active:text-white active:bg-red-600 active:border-red-600 active:ring active:ring-red-100 dark:ring-red-400/20">Yes,
                            Delete It!</button>
                    </div>
                </div>
            </div>
        </div>
    </div><!--end delete modal-->
@endsection
@push('scripts')
    <!-- list js-->
    <script src="{{ URL::asset('build/libs/list.js/list.min.js') }}"></script>

    <!--social event init-->
    <script src="{{ URL::asset('build/js/pages/apps-social-event.init.js') }}"></script>

    <!-- App js -->
    <script src="{{ URL::asset('build/js/app.js') }}"></script>
@endpush
