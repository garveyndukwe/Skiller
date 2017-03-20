class CreateSetDepartments < ActiveRecord::Migration
  def change
    create_table :set_departments do |t|
      t.string :code
      t.string :name
      t.string :display

      t.timestamps null: false
    end
  end
end
