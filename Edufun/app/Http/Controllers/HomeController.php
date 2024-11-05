<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Artikel as ArtikelModel;

class HomeController extends Controller
{
    public function index()
    {
        $posts = ArtikelModel::all();

        return view('edufun.home', compact('posts'));
    }

    public function viewInt(){
        $posts = ArtikelModel::with('comment')->where('type', 'Interactive')->get();
        return view('edufun.interactive', compact('posts'));
    }

    public function viewSoft(){
        $posts = ArtikelModel::with('comment')->where('type', 'Software')->get();
        return view('edufun.software', compact('posts'));
    }

    public function showArtikel($id)
    {
        $post = ArtikelModel::with('comment')->findOrFail($id);

        return view('edufun.artikel', compact('post'));
    }

    public function showAdi()
    {
        $posts = ArtikelModel::with('comment')->where('by', 'Adi')->get();

        return view('edufun.adi', compact('posts'));
    }

    public function showAcil()
    {
        $posts = ArtikelModel::with('comment')->where('by', 'Acil')->get();

        return view('edufun.acil', compact('posts'));
    }

    public function popular()
    {
        $posts = ArtikelModel::with('comment')->paginate(3);

        return view('edufun.popular', compact('posts'));
    }
}
