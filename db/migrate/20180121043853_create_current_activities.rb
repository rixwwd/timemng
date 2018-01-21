class CreateCurrentActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :current_activities do |t|
      t.references :activity
      t.timestamp :started_at, null: false

      t.timestamps
    end
  end
end
