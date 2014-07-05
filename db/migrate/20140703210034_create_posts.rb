class CreatePosts < ActiveRecord::Migration
  def change
  	drop_table :posts
    create_table :posts do |t|
    	t.integer :step_id
    	t.integer :tag_id
    	t.timestamps
    end
  end
end


