@extends('layout.master')

@section('konten')
<div class="container my-5 text-center">
    <h3>Our Writers:</h3>
    <div class="row">
        <div class="col-6">
            <a href="{{ route('edufun.adi') }}">
            <img src="{{ asset('Adi.jpg')}}" alt="" class="img-fluid rounded-circle mb-3" style="width: 150px; height: 150px; object-fit: cover;">
            <h5>Adi</h5>
            <p>Interactive Multimedia</p>
            </a>
        </div>
        <div class="col-6">
            <a href="{{ route('edufun.acil') }}">
            <img src="{{ asset('Acil.jpg')}}" alt="" class="img-fluid rounded-circle mb-3" style="width: 150px; height: 150px; object-fit: cover;">
            <h5>Acil</h5>
            <p>Software Engineering</p>
            </a>
        </div>
    </div>
</div>
@endsection