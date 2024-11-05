<div class="row">
    <div class="col-4">
        <img style="width: 100px;" src="{{ asset('logo.jpg') }}" alt="Logo">
    </div>
    <div class="col-8">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('edufun.home') }}">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="categoryDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Category
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="categoryDropdown">
                        <li><a class="dropdown-item" href="{{ route('edufun.interactive') }}">Interactive Multimedia</a></li>
                        <li><a class="dropdown-item" href="{{ route('edufun.software') }}">Software Engineering</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="{{ route('edufun.writer') }}">Writers</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="{{ route('edufun.aboutus') }}">About Us</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="{{ route('edufun.popular') }}">Popular</a>
                </li>
            </ul>
        </nav>
    </div>
</div>