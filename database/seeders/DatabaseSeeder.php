<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
     

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // User::create([
        //     'name' => "Muhammad Furqon",
        //     'email' => 'furqon827@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);
        // User::create([
        //     'name' => "Fitri Fauziah",
        //     'email' => 'fauziah@gmail.com',
        //     'password' => bcrypt('123457')
        // ]);
        // User::create([
        //     'name' => "Ihsan Maulana",
        //     'email' => 'fisasas@gmail.com',
        //     'password' => bcrypt('123457232')
        // ]);



        User::factory(3)->create();

        Category::create([
            'name' => "Web Programming",
            'slug' => 'web-progamming'
        ]);
        Category::create([
            'name' => "Web Design",
            'slug' => 'web-design'
        ]);
        Category::create([
            'name' => "Muslim Muslimah",
            'slug' => 'muslim-muslimah'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'category_id' => 1,
        //     'user_id' => 1,
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Anak polah bapak kepradah. Agaknya peribahasa Jawa ini cocok betul dengan apa yang dialami Rafael Alun Trisambodo selepas ulah anaknya, Mario Dandy Satriyo, yang menganiaya seorang pelajar',
        //     'body' => '<p>Anak polah bapak kepradah. Agaknya peribahasa Jawa ini cocok betul dengan apa yang dialami Rafael Alun Trisambodo selepas ulah anaknya, Mario Dandy Satriyo, yang menganiaya seorang pelajar bernama Cristalino David Ozora. Buntut Mario yang menjadi tersangka penganiayaan, harta kekayaan Rafael Alun menjadi sorotan. Waktu berlalu dan kini Mario dijerat dengan pasal yang lebih berat, sedangkan Rafael Alun masih terus ditelusuri awal mula hartanya yang disinyalir tak masuk akal.</p>'
        // ]);
          
        //   Post::create([
        //     'title' => 'Judul Kedua',
        //     'category_id' => 2,
        //     'user_id' => 2,
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Jerman tengah membangun jembatan gantung di atas ketinggian 120 meter. Jembatan ini diharapkan menjadi daya tarik wisata utama di "Hutan Hitam" Jakarta',
        //     'body' => '<p>Jerman tengah membangun jembatan gantung di atas ketinggian 120 meter. Jembatan ini diharapkan menjadi daya tarik wisata utama di "Hutan Hitam" Jakarta - MOTUL FIM Superbike World Championship (WSBK atau WorldSBK) Indonesian Round 2023 selesai digelar. Ajang ini diselenggarakan di Pertamina Mandalika International Circuit, Lombok, Nusa Tenggara Barat (NTB) pada 3-5 Maret 2023.PT Pengembangan Pariwisata Indonesia (Persero)/Indonesia Tourism Development Co</p>'
        //   ]);
          
        //   Post::create([
        //     'title' => 'Judul Ketiga',
        //     'category_id' => 3,
        //     'user_id' => 1,
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Personal ini tengah membangun jembatan gantung di atas ketinggian 120 meter. Jembatan ini diharapkan menjadi daya tarik wisata utama di "Hutan Hitam" Jakarta',
        //     'body' => '<p>Personal ini tengah membangun jembatan gantung di atas ketinggian 120 meter. Jembatan ini diharapkan menjadi daya tarik wisata utama di "Hutan Hitam" Jakarta - MOTUL FIM Superbike World Championship (WSBK atau WorldSBK) Indonesian Round 2023 selesai digelar. Ajang ini diselenggarakan di Pertamina Mandalika International Circuit, Lombok, Nusa Tenggara Barat (NTB) pada 3-5 Maret 2023.PT Pengembangan Pariwisata Indonesia (Persero)/Indonesia Tourism Development Co</p>'
        //   ]);
        //   Post::create([
        //     'title' => 'Judul Keempat',
        //     'category_id' => 3,
        //     'user_id' => 3,
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Personal ini tengah membangun jembatan gantung di atas ketinggian 120 meter. Jembatan ini diharapkan menjadi daya tarik wisata utama di "Hutan Hitam" Jakarta',
        //     'body' => '<p>Personal ini tengah membangun jembatan gantung di atas ketinggian 120 meter. Jembatan ini diharapkan menjadi daya tarik wisata utama di "Hutan Hitam" Jakarta - MOTUL FIM Superbike World Championship (WSBK atau WorldSBK) Indonesian Round 2023 selesai digelar. Ajang ini diselenggarakan di Pertamina Mandalika International Circuit, Lombok, Nusa Tenggara Barat (NTB) pada 3-5 Maret 2023.PT Pengembangan Pariwisata Indonesia (Persero)/Indonesia Tourism Development Co</p>'
        //   ]);
          
    }

}
