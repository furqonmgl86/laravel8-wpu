<?php

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "title" => "Home",
        "active" => "home",
    ]);
});


Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "active" => "about",
        "name" => "Muhammad Furqon",
        "email" => "fareqon9282@gmail.com",
        "image" => "frq.jpeg"
    ]);
});



Route::get('/posts', [PostController::class, 'index']);

// Route::get('/posts/{slug}', [PostController::class, 'show']);
// Route::get('/posts/{post}', [PostController::class, 'show']);

Route::get('/posts/{post:slug}', [PostController::class, 'show']);


Route::get('/categories', function(){
    return view ('categories', [
        "title" => "Post Categories All",
        "active" => "post Categories All",
        "categories" => Category::all(),
    ]);
});
// Route::get('/categories/{category:slug}', function(Category $category){
//     return view ('category', [
//         "title" => $category->name,
//         "posts" => $category->posts,
//         'category' => $category->name
//     ]);
// });


// Route::get('/categories/{category:slug}', function(Category $category){
//     return view ('posts', [
//         "title" => "Post by Category : $category->name",
//         "active" => "post Categories All",
//         "posts" => $category->posts->load('category','author'),
//         // 'category' => $category->name
//     ]);
// });

// Route::get('/authors/{author:username}', function(User $author){
//     return view ('posts', [
//         "title" => "Post by Author : $author->name",
//         "active" => "posts",
//         "posts" => $author->posts->load('category','author')
//     ]);
// });

