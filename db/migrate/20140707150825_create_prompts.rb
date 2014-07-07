class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|

 		t.string :title 
 		
    end
  end
end
