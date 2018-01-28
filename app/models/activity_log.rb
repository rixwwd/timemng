class ActivityLog < ApplicationRecord
    belongs_to :activity
    belongs_to :user
    
    validates_associated :activity, presence: true
    validates :started_at, presence: true
    validates :ended_at, presence: true

end
