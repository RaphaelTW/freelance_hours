<x-layouts.app>
    <div>
        {{-- <pre>
        @dd(request())
    </pre> --}}
        <livewire:projects.show :p="request()->route('project')"/>
    </div>
</x-layouts.app>