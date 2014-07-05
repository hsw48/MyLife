class RemovePostFromSteps < ActiveRecord::Migration
  def change

  	remove_column :steps, :post, :text

  end
end
