class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :oral_score
      t.string :written_score
      t.string :analytic_score
      t.string :computing_score
      t.string :technical_score

      t.timestamps null: false
      t.references :staff, index: true
    end
  end
end
