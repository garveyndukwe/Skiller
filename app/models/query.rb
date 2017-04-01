class Query < ActiveRecord::Base

  def fields_numeric
    @result = ActiveRecord::Base.connection.exec_query(self.query_string)
    @result.columns.each do |c|
      "#{c.column_type.first}. #{c}"
    end

  end

  def fields_numeric2(result)
    result.columns_hash.each { |k, v| puts "#{k} => #{v.type}" }
  end

end
