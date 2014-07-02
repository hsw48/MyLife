class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
    	t.string :title
    	t.string :tags
    	t.timestamps
    end
  end
end
