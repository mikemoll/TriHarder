class WorkoutActivitiesController < ApplicationController
  # GET /workout_activities
  # GET /workout_activities.json
  def index
    @workout_activities = WorkoutActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @workout_activities }
    end
  end

  # GET /workout_activities/1
  # GET /workout_activities/1.json
  def show
    @workout_activity = WorkoutActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workout_activity }
    end
  end

  # GET /workout_activities/new
  # GET /workout_activities/new.json
  def new
    @workout_activity = WorkoutActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workout_activity }
    end
  end

  # GET /workout_activities/1/edit
  def edit
    @workout_activity = WorkoutActivity.find(params[:id])
  end

  # POST /workout_activities
  # POST /workout_activities.json
  def create
    @workout_activity = WorkoutActivity.new(params[:workout_activity])

    respond_to do |format|
      if @workout_activity.save
        format.html { redirect_to @workout_activity, notice: 'Workout activity was successfully created.' }
        format.json { render json: @workout_activity, status: :created, location: @workout_activity }
      else
        format.html { render action: "new" }
        format.json { render json: @workout_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workout_activities/1
  # PUT /workout_activities/1.json
  def update
    @workout_activity = WorkoutActivity.find(params[:id])

    respond_to do |format|
      if @workout_activity.update_attributes(params[:workout_activity])
        format.html { redirect_to @workout_activity, notice: 'Workout activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @workout_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_activities/1
  # DELETE /workout_activities/1.json
  def destroy
    @workout_activity = WorkoutActivity.find(params[:id])
    @workout_activity.destroy

    respond_to do |format|
      format.html { redirect_to workout_activities_url }
      format.json { head :no_content }
    end
  end
end
