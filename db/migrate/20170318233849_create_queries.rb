class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :name
      t.string :query
      t.string :fields #semi-comma delimited feilds to show
      t.string :where_clause #null or where clause include AND, OR etc

      t.integer :count
      t.timestamps null: false
    end
  end
end
