<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Illuminate\Database\Seeder;
use Faker\Provider\ar_EG\Company;
use Database\Seeders\CreatePermissions;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //$this->call(CompanySeeder::class);
        // $this->call(UsersSeeder::class);
        // $this->call(ContactsSeeder::class);
        $this->call(CreateAdminUserSeeder::class);
    }
}
