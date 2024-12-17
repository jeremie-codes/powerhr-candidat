<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Client;
use App\Models\Job;
use App\Models\User;
use Database\Factories\PersonneFactory;
use Illuminate\Database\Seeder;
use App\Models\Personne;
use App\Models\Profile;
use App\Models\Skill;
use Spatie\Permission\Models\Role;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\User::factory(10)->create();

        //\App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        
        Role::create(['name' => 'admin']);
        Role::create(['name' => 'candidate']);
        Role::create(['name' => 'employee']);
        Role::create(['name' => 'supervisor']);
        Role::create(['name' => 'customer']);

        // Create a user with a single role
        $user = User::factory()->withRoles('admin')->create();

        // Create a user with multiple roles
        $user = User::factory()->withRoles(['admin'])->create();

        // Create multiple users with the same role
        $users = User::factory(20)->withRoles('candidate')->create();
        $employees = User::factory(20)->withRoles('employee')->create();
        $customers = User::factory(5)->withRoles('customer')->create();
        

        Personne::factory(40)->create();
        Profile::factory(40)->create();

        Job::factory(10)->create();

        Client::factory(10)->create();

        Skill::factory(400)->create();
    }
}
