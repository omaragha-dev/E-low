<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ContactsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $contact = DB::table('contacts')->delete();
        $contact = array(
            array('company_id' => 1,'name' => "Contact 1",'phone' => "0569524448",'email' => "c1@gmail.com",'status' => "1",'type' => " 1"),
            array('company_id' => 2,'name' => "Contact 2",'phone' => "0569524448",'email' => "c2@gmail.com",'status' => "1",'type' => "1"),
            array('company_id' => 3,'name' => "Contact 3",'phone' => "0569524448",'email' => "c3@gmail.com",'status' => "1",'type' => "1"),
            array('company_id' => 3,'name' => "Contact 4",'phone' => "0569524448",'email' => "c4@gmail.com",'status' => "1",'type' => "1"),
        );
        $contacts = DB::table('contacts')->insert($contact);
    }
}
