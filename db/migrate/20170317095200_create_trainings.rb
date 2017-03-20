class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :code
      t.string :category
      t.string :title
      t.datetime :date_attended

      t.timestamps null: false
      t.references :staff, index: true
    end
  end
end
