json.extract! query, :id, :name, :table_list, :query_code, :query_string, :where_clause, :fields, :count, :created_at, :updated_at
json.url query_url(query, format: :json)
