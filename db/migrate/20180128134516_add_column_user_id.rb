class AddColumnUserId < ActiveRecord::Migration[5.1]
  def change
    add_reference :activities, :user, foreign_key: true
    add_reference :activity_logs, :user, foreign_key: true
    add_reference :current_activities, :user, foreign_key: true
  end
end
