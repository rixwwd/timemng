class ActivityLog < ApplicationRecord
    belongs_to :activity
    belongs_to :user
    
    validates_associated :activity, presence: true
    validates :started_at, presence: true
    validates :ended_at, presence: true

    # 指定した期間のアクティビティを取得する
    scope :activity_of, 
        ->(datetime) { includes(:activity)\
            .where(started_at: datetime.beginning_of_day..datetime.end_of_day)\
            .order(started_at: :asc)\
            .references(:activity)}

    scope :today_activity, ->{ activity_of(DateTime.now) }
end
