<x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        {{ __($tab_title ?? 'tab title') }}
    </h2>
</x-slot>

<div class="py-7">
    <div class="bg-gray-100 text-center ring-offset-8 overflow-hidden" wire:poll.1000ms>
        Current time: {{ now() }}
    </div>
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-xl sm:rounded-sm px-4 py-4">
            <div class="flex gap-1">
                <div class="w-8/12 mr-2 outline-double rounded-sm">
                    <div class="rounded-md px-4 pt-3 pb-2 sm:p-6 sm:pb-4">
                        <div class="mb-2 text-md font-bold">
                            Tanaman
                        </div>
                        <div>
                            test
                        </div>
                    </div>
                </div>
                <div class="w-4/12 outline-double rounded-sm">
                    <div class="rounded-md px-4 pt-3 pb-2 sm:p-6 sm:pb-4">
                        <div class="mb-2 text-md font-bold">
                            Jenis Tanaman
                        </div>
                        <div>
                            test
                            {{-- modal button --}}
                            <button wire:click="
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@section('tab_title', $tab_title)
