class CurrentActiviotyController < ApplicationController
  # POST /current_activities/start
  def start
    activity = Activity.find(params[:activity_id])
    CurrentActivity.start(activity&.id)
  end

  # POST /current_activities/stop
  def stop
    CurrentActivity.stop
  end

end
