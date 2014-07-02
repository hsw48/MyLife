class AddPostToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :post, :text
  end
end
