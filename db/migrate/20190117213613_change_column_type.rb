class ChangeColumnType < ActiveRecord::Migration[5.1]
    def change
      change_column :weights, :weight, :float

    end
end
