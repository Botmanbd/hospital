<?php

use Illuminate\Database\Seeder;
use App\Role;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Role::create(['name' => 'doctors']);
        Role::create(['name' => 'admin']);
        Role::create(['name' => 'patient']);

        // $this->call(UsersTableSeeder::class);
    }
}
