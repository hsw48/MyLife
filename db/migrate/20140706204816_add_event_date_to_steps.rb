class AddEventDateToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :event_date, :date, default: Date.today
  end
end
