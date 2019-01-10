class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :challenges, :owner, :owner_id
  end
end
