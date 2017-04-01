class CreateSetQualifications < ActiveRecord::Migration
  def change
    create_table :set_qualifications do |t|
      t.string :code
      t.string :name
      t.string :display
      t.timestamps null: false
    end
  end
end
