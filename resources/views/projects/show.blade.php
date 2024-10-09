<x-layouts.app>
    {{-- <div class="grid grid-cols-3 gap-6">
        <livewire:projects.show :$project />

        <livewire:projects.proposals :$project />
    </div> --}}


    {{-- show
    <div>
        <pre>
            @dd(request()->route('project'))
        </pre>
    </div> --}}
    {{-- <livewire:projects.show :p="request()->route('project')"/> --}}
    <livewire:projects.show :$project />
    <livewire:projects.proposals :$project />
</x-layouts.app>