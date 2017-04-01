class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :name
      t.string :query_code
      t.string :table_list
      t.string :query_string
      t.string :fields #semi-comma delimited feilds to show
      t.string :where_clause #null or where clause include AND, OR etc
      t.boolean :count

      t.boolean :has_chart, default: false
      t.timestamps null: false

    end
  end
end
