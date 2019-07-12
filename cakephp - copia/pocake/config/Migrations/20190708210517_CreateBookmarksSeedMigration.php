<?php
use Migrations\AbstractMigration;

class CreateBookmarksSeedMigration extends AbstractMigration
{
    /**
     * Change Method.
     *
     * More information on this method is available here:
     * http://docs.phinx.org/en/latest/migrations.html#the-change-method
     * @return void
     */
    public function up(){
        $faker = \Faker\Factory::create();
        $populator = new Faker\ORM\CakePHP\Populator($faker);

        $populator->addEntity('Bookmarks',200,[
            'title' => function()use($faker){
                return $faker->sentence($nbWords = 3, $variableNbWords = true);
            },
            'description' => function()use($faker){
                return $faker->paragraph($nbsentences = 3, $variableNbSentences = true);
            },
            'url' => function() use ($faker){
                return $faker->url;
            },
            'created' => function() use ($faker){
                return $faker->dateTimeBetween($startDate = 'now',$endDate = 'now');
            },
            'modified' => function() use ($faker){
                return $faker->dateTimeBetween($startDate = 'now',$endDate = 'now');
            },
            'user_id' => function(){
                return rand(1,51);
            }
        ]);

        $populator->execute();

    }
}
