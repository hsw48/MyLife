class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
    	t.string :title
    	t.string :tags
    	t.text :post
    	t.timestamps
    end
  end
end
