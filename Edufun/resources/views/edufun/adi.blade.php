@extends('layout.master')

@section('konten')
<div class="container my-5">
    <div class="d-flex align-items-center p-3" style="background-color: #f4f6f7; border-radius: 10px;">
        <div class="me-3">
            <img src="{{ asset('Adi.jpg') }}" alt="" class="img-fluid rounded-circle" style="width: 150px; height: 150px; object-fit: cover;">
        </div>
        
        <div>
            <h5 class="fw-bold mb-1">Adi</h5>
            <p class="mb-0 text-muted">Interactive Multimedia</p>
        </div>
    </div>
</div>
<div class="container">
    <table class="table table-bordered">
        <tbody>
            @foreach ($posts as $p)
                <tr>
                    <td style="width: 30%;">
                            <img src="{{ asset('images/' . $p->image) }}" class="img-fluid rounded custom-image" alt="{{ $p->title }}">
                    </td> 
                    
                    <td>
                            <div class="card-body">
                                <h5 class="card-title">{{ $p->title }}</h5>
                                <p class="card-text">{{ $p->tgl }} | by: {{ $p->by }}</p>
                                
                                @if($p->comment->isNotEmpty())
                                    <p class="card-text">{{ Str::limit($p->comment->first()->body, 100) }}</p>
                                @endif
                                
                                <a href="{{ route('edufun.artikel', $p->id) }}" class="btn btn-dark btn-sm mt-2">Read more...</a>
                            </div>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection