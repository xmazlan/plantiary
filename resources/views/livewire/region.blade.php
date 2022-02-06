<div>
    <div wire:poll.1000ms>
        Current time: {{ now() }}
    </div>

    {{-- @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif --}}
    {{-- <button wire:click="$toggle('modal')" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 border border-blue-700 rounded mb-5">Test Modal</button> --}}

    <div>
        {{-- @foreach ($provinces as $province)
            <div class="ml-2"><span class="cursor-pointer hover:bg-gray-400 px-2" wire:click="get_data('province', {{ $province->id }})">{!! ($province_id == $province->id) ? '&darr;' : '&rarr;' !!}</span> prov: {{ $province->name }}</div>
            @foreach ($regencies as $regency)
                @if ($regency->province_id == $province->id)
                    <div class="ml-5"><span class="cursor-pointer hover:bg-gray-400 px-2" wire:click="get_data('regency', {{ $regency->id }})">{!! ($regency_id == $regency->id) ? '&downarrow;' : '&rightarrow;' !!}</span> kab: {{ $regency->name }}</div>
                    @foreach ($districts as $district)
                        @if ($district->regency_id == $regency->id)
                            <div class="ml-10"><span class="cursor-pointer hover:bg-gray-400 px-2" wire:click="get_data('district', {{ $district->id }})">{!! ($district_id == $district->id) ? '&downarrow;' : '&rightarrow;' !!}</span> kec: {{ $district->name }}</div>
                            @foreach ($villages as $village)
                                @if ($village->district_id == $district->id)
                                    <div class="ml-16"><span class="cursor-pointer hover:bg-gray-400 px-2" wire:click="get_data('village', {{ $village->id }})">{!! ($village_id == $village->id) ? '&downarrow;' : '&rightarrow;' !!}</span> kel: {{ $village->name }}</div>
                                @endif
                            @endforeach

                        @endif
                    @endforeach
                @endif
            @endforeach
        @endforeach --}}
        @foreach ($districts as $district)
            <div class="ml-2"><span class="cursor-pointer hover:bg-gray-200 px-3 {!! ($district_id == $district->id) ? 'font-bold text-blue-500' : 'text-gray-700' !!}" wire:click="get_data('district', {{ $district->id }})">&raquo; {{ ucwords(strtolower($district->name)) }}</span></div>
            {{-- only active district will show the button --}}
            @if ($district_id == $district->id)
            <button wire:click="showModal('village')" class="ml-8 bg-green-300 hover:bg-green-400 text-black font-bold py-1 px-2 border border-green-700 rounded mb-2 text-xs">+Kelurahan @ {{ ucwords(strtolower($district->name)) }}</button>
            @endif
            @foreach ($villages as $village)
                @if ($village->district_id == $district->id)
                    <div class="ml-6"><span class="cursor-pointer hover:bg-gray-200 px-3 {!! ($village_id == $village->id) ? 'font-bold text-green-500' : 'text-gray-500' !!}" wire:click="get_data('village', {{ $village->id }})">&rarr; {{ ucwords(strtolower($village->name)) }}</span></div>
                    {{-- button street --}}
                    @if ($district_id == $district->id && $village_id == $village->id)
                        <button wire:click="showModal('street')" class="ml-10 bg-red-300 hover:bg-red-400 text-black font-bold py-1 px-2 border border-red-700 rounded mb-2 text-xs">+Jalan @ {{ ucwords(strtolower($village->name)) }}</button>
                    @endif

                    {{-- street lists --}}
                    @forelse ($list_of_street_names as $street)
                        @if ($street->village_id == $village->id)
                        <div class="ml-8"><span class="hover:bg-gray-200 px-3 {!! ($street_id == $street->id) ? 'font-bold text-red-500' : 'text-gray-500' !!}">&rdca; {{ $street->name }}</span></div>
                        @endif
                    @empty
                        @if ($village_id == $village->id)
                        <div class="ml-10"><span class="px-3 font-bold text-red-500">&mdash;</span></div>
                        @endif
                    @endforelse

                @endif
            @endforeach
        @endforeach
        <button wire:click="showModal('district')" class="ml-6 bg-blue-300 hover:bg-blue-400 text-black font-bold py-1 px-2 border border-blue-700 rounded mb-5 text-xs">Tambah kecamatan</button>
        {{-- <div class="mt-4">
            <label for="nama_kecamatan" class="block text-gray-700 text-sm font-bold">Tambah Kecamatan:</label>
            <div class="block">
                <input type="text"
                    class="shadow appearance-none border rounded w-1/5 py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    id="nama_kecamatan" placeholder="Nama Kecamatan" wire:model="districtName">
                @error('districtName') <span class="text-red-500">{{ $message }}</span>@enderror
                <button wire:click="createDistrict()"
                    class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">{{ __('Tambah') }}</button>
            </div>
        </div> --}}
    </div>

    <x-modal wire:model="modal">

        @php
            if($location_type == 'district'){
                $act = '+Kecamatan';
            }elseif ($location_type == 'village') {
                $act = '+Kelurahan @ ' . ucwords(strtolower(\App\Models\District::find($district_id)->name));
            }elseif ($location_type == 'street') {
                $act = '+Jalan @ ' . ucwords(strtolower(\App\Models\Village::find($village_id)->name));
            }else {
                $act = '';
            }
        @endphp

        <x-slot name="title">
            {{ __($act) }}
        </x-slot>

        <x-slot name="content">
            <div class="mt-4">
                <input type="text"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" placeholder="Nama" wire:model.debounce.500ms="data_name">
            </div>
        </x-slot>

        <x-slot name="footer">
            <button class="bg-red-500 hover:bg-red-700 text-white font-bold py-1 px-4 border border-red-700 rounded mb-5" wire:click="resetInputFields()" wire:loading.attr="disabled">
                {{ __('Batal') }}
            </button>

            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-1 px-4 border border-blue-700 rounded mb-5" wire:click="createData()" wire:loading.attr="disabled">
                {{ __('Tambah') }}
            </button>
        </x-slot>
    </x-modal>
</div>
