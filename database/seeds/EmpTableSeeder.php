<?php

use Illuminate\Database\Seeder;

class EmpTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Emp::class,50)->create();
    }
}
