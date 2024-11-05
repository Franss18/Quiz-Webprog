@extends('layout.master')

@section('konten')
<div class="row">
    <div class="col-12">
        <img src="{{ asset('home.jpg') }}" alt="" class="img-fluid">
    </div>
</div>

<div class="container">
    <table class="table table-bordered">
        <tbody>
            @foreach ($posts as $post)
                <tr>
                    <td style="width: 30%;">
                        <img src="{{ asset('images/' . $post->image) }}" class="img-fluid rounded custom-image" alt="{{ $post->title }}">
                    </td>
                    <td>
                        <h5>{{ $post->title }}</h5>
                        <p class="card-text">{{ $post->tgl }} | by: {{ $post->by }}</p>
                        @if($post->comment->isNotEmpty())
                            <p class="card-text">{{ Str::limit($post->comment->first()->body, 100) }}</p>
                        @endif

                        <a href="{{ route('edufun.artikel', $post->id) }}" class="btn btn-dark btn-sm mt-2">Read more...</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection