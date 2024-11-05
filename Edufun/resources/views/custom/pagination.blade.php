@if ($paginator->hasPages())
    <div class="d-flex justify-content-center align-items-center">
        <span class="me-2">Page |</span>
        
        @foreach ($elements as $element)
            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <span class="mx-1">{{ $page }}</span>
                    @else
                        <a href="{{ $url }}" class="mx-1">{{ $page }}</a>
                    @endif
                @endforeach
            @endif
        @endforeach
    </div>
@endif
