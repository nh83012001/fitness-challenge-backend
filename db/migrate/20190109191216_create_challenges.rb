class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :close_date
      t.integer :owner

      t.timestamps
    end
  end
end
