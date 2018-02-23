class CreateAttractions < ActiveRecord::Migration
 # Write your migrations here

 create_table :attractions do |t|
   t.string :name 
   t.integer :tickets
   t.integer :nausea_rating
   t.integer :happiness_rating
   t.integer :min_height

   t.timestamps null: false
 end

end
