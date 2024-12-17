<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('personnes', function (Blueprint $table) {
            $table->text('SkillSet')
                ->after('matricule')
                ->nullable();

            $table->text('HighestQualificationHeld')
                ->after('SkillSet')
                ->nullable();

            $table->text('CurrentSalary')
                ->after('HighestQualificationHeld')
                ->nullable();

            $table->text('AdditionalInformation')
                ->after('CurrentSalary')
                ->nullable();

            $table->text('Street')
                ->after('AdditionalInformation')
                ->nullable();

            $table->text('School')
                ->after('Street')
                ->nullable();

            $table->text('ExperienceDetails')
                ->after('School')
                ->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('personnes', function (Blueprint $table) {
            $table->dropColumn(array_merge([
                'SkillSet',
                'HighestQualificationHeld',
                'CurrentSalary',
                'AdditionalInformation',
                'Street',
                'School',
                'ExperienceDetails',
            ]));
        });
    }
};
