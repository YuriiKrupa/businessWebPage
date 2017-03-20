class CreateContactUs < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_us do |t|
      t.string :fullname
      t.string :email
      t.string :phone, limit: 15
      t.text :message

      t.timestamps
    end
  end
end