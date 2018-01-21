class Activity < ApplicationRecord

    has_many :current_activities
    has_many :activity_logs

    validates :label, presence: true, length: {maximum: 255}
end
