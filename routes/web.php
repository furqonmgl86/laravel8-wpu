<?php

use Illuminate\Support\Facades\Route;

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
        "title" => "Home"
    ]);
});


Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Muhammad Furqon",
        "email" => "fareqon9282@gmail.com",
        "image" => "frq.jpeg"
    ]);
});



Route::get('/blog', function () {
    $blog_post = [
        [
            "title" => "Judul blog pertama",
            "slug" => "judul-blog-pertama",
            "author" => "Fitri Fauziah",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa fuga sint reiciendis quam. Quidem expedita iste voluptas, repellendus corporis consequuntur nulla autem a ab enim voluptate perspiciatis corrupti nam error fugit earum, deleniti dignissimos officia necessitatibus distinctio quas fuga rem. Quam similique sapiente molestiae rerum adipisci eveniet voluptas quia dignissimos quaerat veritatis architecto nostrum doloremque facere eligendi, expedita, labore aliquam! Consectetur commodi in quos iure eligendi quia, totam quae, voluptatibus sunt cupiditate nostrum maiores rerum rem natus hic soluta eius!"
        ],
        [
            "title" => "Judul blog kedua",
            "slug" => "judul-blog-kedua",
            "author" => "Furqon Muhammad",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Totam odit veniam laudantium eum nesciunt eos, ipsa dolor earum exercitationem, incidunt cum quidem vel magni. Eveniet vero nihil voluptatem porro quam rerum, aliquam debitis libero consequatur deserunt officiis placeat exercitationem qui asperiores, sequi facere saepe provident sit laudantium nobis repellendus illo molestiae ipsum. Dolorum, consequuntur tempore architecto, facilis repellat ducimus officiis quibusdam aliquam quaerat vitae harum itaque! Amet obcaecati cum ullam expedita quam harum saepe minima ab, delectus eum qui rem sapiente quia veniam! Dolores hic quasi, delectus nihil odio veritatis totam numquam nemo qui repudiandae voluptatem enim laborum necessitatibus nesciunt fuga iste cumque? Tempora incidunt est repudiandae nisi dolorum libero? Vitae ipsum placeat architecto. Voluptatibus obcaecati blanditiis perspiciatis eum et."
        ],
        ];
    return view('posts', [
        "title" => "Posts",
        "posts" => $blog_post
    ]);
});



Route::get('posts/{slug}', function ($slug) {
    $blog_post = [
        [
            "title" => "Judul blog pertama",
            "slug" => "judul-blog-pertama",
            "author" => "Fitri Fauziah",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa fuga sint reiciendis quam. Quidem expedita iste voluptas, repellendus corporis consequuntur nulla autem a ab enim voluptate perspiciatis corrupti nam error fugit earum, deleniti dignissimos officia necessitatibus distinctio quas fuga rem. Quam similique sapiente molestiae rerum adipisci eveniet voluptas quia dignissimos quaerat veritatis architecto nostrum doloremque facere eligendi, expedita, labore aliquam! Consectetur commodi in quos iure eligendi quia, totam quae, voluptatibus sunt cupiditate nostrum maiores rerum rem natus hic soluta eius!"
        ],
        [
            "title" => "Judul blog kedua",
            "slug" => "judul-blog-kedua",
            "author" => "Furqon Muhammad",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Totam odit veniam laudantium eum nesciunt eos, ipsa dolor earum exercitationem, incidunt cum quidem vel magni. Eveniet vero nihil voluptatem porro quam rerum, aliquam debitis libero consequatur deserunt officiis placeat exercitationem qui asperiores, sequi facere saepe provident sit laudantium nobis repellendus illo molestiae ipsum. Dolorum, consequuntur tempore architecto, facilis repellat ducimus officiis quibusdam aliquam quaerat vitae harum itaque! Amet obcaecati cum ullam expedita quam harum saepe minima ab, delectus eum qui rem sapiente quia veniam! Dolores hic quasi, delectus nihil odio veritatis totam numquam nemo qui repudiandae voluptatem enim laborum necessitatibus nesciunt fuga iste cumque? Tempora incidunt est repudiandae nisi dolorum libero? Vitae ipsum placeat architecto. Voluptatibus obcaecati blanditiis perspiciatis eum et."
        ],
        ];
        $new_post = [];
        foreach($blog_post as $post){
            if($post['slug'] === $slug){
                $new_post = $post;
            }
        }
    return view('post', [
        "title" => "Single Post",
        "post" => $new_post
    ]);
});