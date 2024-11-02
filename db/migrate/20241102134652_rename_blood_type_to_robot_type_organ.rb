class RenameBloodTypeToRobotTypeOrgan < ActiveRecord::Migration[7.1]
  def change
    rename_column :organs, :bloody_type, :robot_type
  end
end
