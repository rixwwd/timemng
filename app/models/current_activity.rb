class CurrentActivity < ApplicationRecord

  belongs_to :activity
  belongs_to :user

  validates :activity, presence: false
  validates :started_at, presence: true
  
  def start(activity)
    self.activity_id = activity
    self.started_at = DateTime.now
  end

  def stop
    ca = CurrentActivity.lock.first
    al = ActivityLog.new(user: self.user, activity: ca.activity, started_at: ca.started_at, ended_at: DateTime.now)
    al.save
    ca.destroy
  end

end
