@extends('layout.master')

@section('konten')
@if($post->type == 'Interactive')
<div class="container my-5">
    <h3>Interactive Multimedia</h3>
    <div class="text-center my-4">
        <img src="{{ asset('images/' . $post->image) }}" class="img-fluid rounded" alt="{{ $post->title }}" style="width: 100%; max-width: 800px;">
    </div>
    <h2>{{ $post->title }}</h2>
    <p>{{ $post->body }}</p>
    
    @foreach ($post->comment as $com)
        <p>{{ $com->body }}</p>
    @endforeach

</div>
@else
<div class="container my-5">
    <h3>Software Engineering</h3>
    <div class="text-center my-4">
        <img src="{{ asset('images/' . $post->image) }}" class="img-fluid rounded" alt="{{ $post->title }}" style="width: 100%; max-width: 800px;">
    </div>
    <h2>{{ $post->title }}</h2>
    <p>{{ $post->body }}</p>
    
    @foreach ($post->comment as $com)
        <p>{{ $com->body }}</p>
    @endforeach

</div>
@endif
@endsection