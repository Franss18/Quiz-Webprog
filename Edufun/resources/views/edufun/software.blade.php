@extends('layout.master')

@section('konten')
<h3>Software Engineering</h3>
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