class Query < ActiveRecord::Base

  def execQuery(q_id)
    #to_query order
    queryStr = 'select distinct staff.* from staffs orderby station'
    @results = @query.query
  end
end
