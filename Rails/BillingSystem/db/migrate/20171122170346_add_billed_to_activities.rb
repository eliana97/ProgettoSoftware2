class AddBilledToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :billed, :boolean
  end
end
