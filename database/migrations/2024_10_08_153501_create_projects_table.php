<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use App\Models\User;

return new class extends Migration
{

    // Table projects {
    //     id int [primary key, increment]
    //     title string
    //     description text
    //     created_art datetime
    //     ends_art datetime
    //     tech_stack json
    //     created_by fk [ref: < users.id]
    //   }

    public function up(): void
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->text('description');
            $table->dateTime('ends_at');
            $table->string('status')->default('open');
            $table->json('tech_stack');
            $table->foreignIdFor(User::class, 'created_by')->constrained('users');
            $table->timestamps();
        });
    }
    
    public function down(): void
    {
        Schema::dropIfExists('projects');
    }
};
