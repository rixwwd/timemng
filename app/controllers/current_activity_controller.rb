class CurrentActivityController < ApplicationController
  
  # GET /current_activity
  def index
    @current_activity = CurrentActivity.first
    respond_to do |format|
      format.html { render :index }
    end
  end

  # POST /current_activities/start
  def start
    activity = Activity.find(params[:activity_id])
    CurrentActivity.start(activity&.id)
    respond_to do |format|
      format.html { redirect_to current_activity_url }
    end
  end

  # POST /current_activities/stop
  def stop
    CurrentActivity.stop
    respond_to do |format|
      format.html { redirect_to current_activity_url }
    end
  end

end
