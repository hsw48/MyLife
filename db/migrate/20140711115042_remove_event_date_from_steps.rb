class RemoveEventDateFromSteps < ActiveRecord::Migration
  def change
    remove_column :steps, :event_date, :date
  end
end
