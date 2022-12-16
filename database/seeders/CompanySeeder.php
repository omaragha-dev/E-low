<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $compnay = DB::table('companies')->delete();
        $compnay = array(
            array('owner_id' => 1, 'company_name' => "Comp 1", 'company_phone' => "0569524448"),
            array('owner_id' => 2, 'company_name' => "Comp 2", 'company_phone' => "0569524448"),
            array('owner_id' => 3, 'company_name' => "Comp 3", 'company_phone' => "0569524448"),
            array('owner_id' => 4, 'company_name' => "Comp 4", 'company_phone' => "0569524448"),
        );
        $companies = DB::table('companies')->insert($compnay);
    }
}
