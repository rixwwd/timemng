class CurrentActivity < ApplicationRecord

  belongs_to :activity

  validates :activity, presence: false
  validates :started_at, presence: true
  
  def self.start(activity)
    ca = CurrentActivity.new(activity_id: activity, started_at: DateTime.now)
    ca.save
  end

  def self.stop
    ca = CurrentActivity.lock.first
    al = ActivityLog.new(activity: ca.activity, started_at: ca.started_at, ended_at: DateTime.now)
    al.save
    ca.destroy
  end

end
