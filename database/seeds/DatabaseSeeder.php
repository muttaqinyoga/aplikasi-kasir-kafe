<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Table;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        User::create([
        	'name' => 'Owner Kafe',
        	'email' => 'admin@kafe.com',
        	'password' => bcrypt('Admin246'),
        	'role' => 62
        ]);
        // Table
        for($i=1; $i<=20; $i++)
        {
            Table::create([
                'table_number' => $i
            ]);
        }
        // Menus
        DB::statement("insert into menus (uid, menu_name, menu_price, status_stock, created_at, updated_at) VALUES
        ('076c72e7-295a-11eb-841b-2cfda12b034d', 'Teh Manis (Hangat & Dingin)', 5000, 'Tersedia', '2020-11-17 14:53:41', '2020-11-17 14:53:41'),
        ('1e2560d6-41f9-11ec-ba87-b4692141738b', 'Kentang Goreng', 15000, 'Tersedia', '2021-11-10 07:37:55', '2021-11-10 07:37:55'),
        ('28c16ef3-295a-11eb-841b-2cfda12b034d', 'Teh botol Sosro', 6000, 'Tersedia', '2020-11-17 14:54:37', '2020-11-17 14:54:37'),
        ('4eff3b88-295a-11eb-841b-2cfda12b034d', 'Tebs', 7000, 'Tersedia', '2020-11-17 14:55:41', '2020-11-17 14:55:41'),
        ('509f1ebc-2959-11eb-841b-2cfda12b034d', 'Nasi Goreng Ayam Penyet', 18000, 'Tersedia', '2020-11-17 14:48:34', '2020-11-17 14:48:34'),
        ('6345e8d0-295a-11eb-841b-2cfda12b034d', 'Kopi Hitam (Hangat & Dingin)', 5000, 'Tersedia', '2020-11-17 14:56:15', '2020-11-17 14:56:15'),
        ('736458ed-295a-11eb-841b-2cfda12b034d', 'Capucino (Hangat & Dingin)', 8000, 'Tersedia', '2020-11-17 14:56:42', '2020-11-17 14:56:42'),
        ('736a3e25-2959-11eb-841b-2cfda12b034d', 'Nasi Goreng Ayam Bakar', 20000, 'Tersedia', '2020-11-17 14:49:33', '2020-11-17 14:49:33'),
        ('79f2bc0f-295a-11eb-841b-2cfda12b034d', 'Capucino + susu (Hangat & Dingin)', 10000, 'Tersedia', '2020-11-17 14:56:53', '2020-11-17 14:56:53'),
        ('83eeabdb-295a-11eb-841b-2cfda12b034d', 'Kopi Luwak (Hangat & Dingin)', 7000, 'Tersedia', '2020-11-17 14:57:10', '2020-11-17 14:57:10'),
        ('84e1c173-2959-11eb-841b-2cfda12b034d', 'Nasi Ayam Penyet', 15000, 'Tersedia', '2020-11-17 14:50:02', '2020-11-17 14:50:02'),
        ('8b16c72e-295a-11eb-841b-2cfda12b034d', 'Kopi Luwak + Susu (Hangat & Dingin)', 9000, 'Tersedia', '2020-11-17 14:57:22', '2020-11-17 14:57:22'),
        ('8d1a95a8-2959-11eb-841b-2cfda12b034d', 'Nasi Ayam Bakar', 17000, 'Tersedia', '2020-11-17 14:50:16', '2020-11-17 14:50:16'),
        ('94573f51-2958-11eb-841b-2cfda12b034d', 'Nasi Goreng', 10000, 'Tersedia', '2020-11-17 14:43:18', '2020-11-17 14:43:18'),
        ('98bb286b-295a-11eb-841b-2cfda12b034d', 'Teh Tarik (Hangat & Dingin)', 10000, 'Tersedia', '2020-11-17 14:57:45', '2020-11-17 14:57:45'),
        ('a82a8205-2959-11eb-841b-2cfda12b034d', 'Indomie Goreng', 10000, 'Tersedia', '2020-11-17 14:51:01', '2020-11-17 14:51:01'),
        ('ae2353e0-2959-11eb-841b-2cfda12b034d', 'Indomie Kuah', 9000, 'Tersedia', '2020-11-17 14:51:11', '2020-11-17 14:51:11'),
        ('c4de0aac-2959-11eb-841b-2cfda12b034d', 'Mie Aceh Goreng', 10000, 'Tersedia', '2020-11-17 14:51:49', '2020-11-17 14:51:49'),
        ('c7e677d5-2986-11eb-9003-2cfda12b034d', 'Bakso', 12000, 'Tersedia', '2020-11-17 20:14:02', '2020-12-18 14:24:22'),
        ('cc8edc7b-2a0e-11eb-902a-2cfda12b034d', 'Fruit Tea', 7000, 'Tersedia', '2020-11-18 12:27:41', '2020-11-18 12:27:41'),
        ('d07197b8-2959-11eb-841b-2cfda12b034d', 'Mie Aceh Kuah', 10000, 'Tersedia', '2020-11-17 14:52:09', '2020-11-17 14:52:09'),
        ('e83b79ec-2959-11eb-841b-2cfda12b034d', 'Nasi Goreng Seafood', 25000, 'Tersedia', '2020-11-17 14:52:48', '2020-11-17 14:52:48')
        ");
    }
}
