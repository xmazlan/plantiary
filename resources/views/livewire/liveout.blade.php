<x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        {{ __($tab_title ?? 'tab title') }}
    </h2>
</x-slot>

<div class="py-7">
    <div class="max-w-{{ $maxwidth ?? '7xl' }} mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg px-4 py-4">
            @include('livewire.'.$livepage)
        </div>
    </div>
</div>
@section('tab_title', $tab_title)
