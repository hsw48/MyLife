class AddEventDateToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :event_date, :date
  end
end
