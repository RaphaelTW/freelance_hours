@props([status])

<span class="bg-[#C0F7B4] text-[#1D8338] rounded-full font-bold text-center uppercase py-[6px] px-[14px] text-[12px] tracking-wide">
  {{ $status->label() }}
</span>