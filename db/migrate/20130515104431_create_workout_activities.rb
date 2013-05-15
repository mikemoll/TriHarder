class CreateWorkoutActivities < ActiveRecord::Migration
  def change
    create_table :workout_activities do |t|
      t.string :Type
      t.text :Description

      t.timestamps
    end
  end
end
