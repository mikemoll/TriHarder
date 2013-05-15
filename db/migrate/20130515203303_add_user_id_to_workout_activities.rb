class AddUserIdToWorkoutActivities < ActiveRecord::Migration
  def change
  
add_column :workout_activities, :user_id, :interger
add_index :workout_activities, :user_id

  end
end
