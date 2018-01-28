class CurrentActivityController < ApplicationController
  before_action :authenticate_user!
  
  # GET /current_activity
  def index
    @current_activity = current_user.current_activity
    respond_to do |format|
      format.html { render :index }
    end
  end

  # POST /current_activities/start
  def start
    begin
      activity = current_user.activities.find(params[:activity_id])  
    rescue ActiveRecord::RecordNotFound
      flush.now[:warn] = "Activity Not Selected."
      respond_to do |format|
        format.html { render :index }
      end
      return
    end
    ca = current_user.build_current_activity
    ca.start(activity.id)
    ca.save
    respond_to do |format|
      format.html { redirect_to current_activity_url }
    end
  end

  # POST /current_activities/stop
  def stop
    current_user.current_activity.stop
    respond_to do |format|
      format.html { redirect_to current_activity_url }
    end
  end

end
