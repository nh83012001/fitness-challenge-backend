class CreateUserExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :user_exercises do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.integer :minutes
      t.datetime :date

      t.timestamps
    end
  end
end
