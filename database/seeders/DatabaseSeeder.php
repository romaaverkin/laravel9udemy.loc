<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Company;
use App\Models\Contact;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Company::factory()->count(10)->create()->each(function ($company) {
            $company->contacts()->saveMany(
                Contact::factory()->count(rand(5, 10))->make()
            );
        });
//        Contact::factory()->count(50)->create();
    }
}
