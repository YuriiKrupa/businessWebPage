class CreateContactForms < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_forms do |t|
      t.string :full_name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
