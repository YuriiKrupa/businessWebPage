class AddJobPositionToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :job_position, :reference
  end
end
