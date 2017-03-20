class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.integer :file_no
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :rank
      t.string :gender
      t.string :area_specialize
      t.string :qualification
      t.string :station
      t.string :department
      t.string :section
      t.integer :grade
      t.integer :step
      t.boolean :submitted

      t.timestamps null: false
    end
  end
end
