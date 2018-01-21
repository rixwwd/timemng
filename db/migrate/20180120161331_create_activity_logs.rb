class CreateActivityLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_logs do |t|
      t.references :activity, foreign_key: true
      t.timestamp :started_at, null: false
      t.timestamp :ended_at, null: false

      t.timestamps
    end
  end
end
