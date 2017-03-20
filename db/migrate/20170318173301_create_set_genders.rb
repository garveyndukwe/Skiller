class CreateSetGenders < ActiveRecord::Migration
  def change
    create_table :set_genders do |t|
      t.string :code
      t.string :display

      t.timestamps null: false
    end
  end
end
