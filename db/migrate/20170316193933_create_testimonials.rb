class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.string :author
      t.text :body
      t.string :company
      t.string :avatar

      t.timestamps
    end
  end
end
