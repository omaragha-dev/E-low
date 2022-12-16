<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\Hash;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    { 
        $user = DB::table('users')->delete();
        $user = array(
            array('company_id' => 1,'name' => "User 1",'email' => "u1@gmail.com" , 'password'=>Hash::make('123456')),
            array('company_id' => 2,'name' => "User 2",'email' => "u2@gmail.com" , 'password'=>Hash::make('123456')),
            array('company_id' => 2,'name' => "User 3",'email' => "u3@gmail.com" , 'password'=>Hash::make('123456')),
            array('company_id' => 4,'name' => "User 4",'email' => "u4@gmail.com" , 'password'=>Hash::make('123456'))
        );
        $users = DB::table('users')->insert($user);
    }
}
