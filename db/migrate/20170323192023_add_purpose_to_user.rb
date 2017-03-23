class AddPurposeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :purpose, :reference
  end
end
