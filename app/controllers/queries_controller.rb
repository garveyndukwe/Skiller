class QueriesController < ApplicationController
  before_action :set_query, only: [ :show, :edit, :update, :destroy]

  # GET /queries
  # GET /queries.json
  def index
    @queries = Query.all
    #users = User.includes(:address)
    #   users.each do |user|
    #     user.address.city
    #   end
    #
    # allows you to access the +address+ attribute of the +User+ model without
    # firing an additional query. This will often result in a
    # performance improvement over a simple +join+.
    #
    # You can also specify multiple relationships, like this:
    #
    #   users = User.includes(:address, :friends)
    #
    # Loading nested relationships is possible using a Hash:
    #
    #   users = User.includes(:address, friends: [:address, :followers])
    #
  end

  def chart_index
    #@queries = Query.all
    #@queries = Query.all
  end
  # GET /queries/1
  # GET /queries/1.json
  def show
    #msql = "SELECT distinct staffs.* FROM staffs WHERE gender ='F'"
    #msql ="Select id, file_no, first_name, middle_name, last_name FROM STAFFS where qualification = 'MSC'"

    if @query.query_string.nil?
    else
      msql = @query.query_string
      #msql="SELECT s.* FROM staffs s WHERE s.gender = 'M'"
      @result = ActiveRecord::Base.connection.exec_query(msql)

      #@result = Staff.find_by_sql (msql)
      #@results =Staff.find_each (msql) #(@query.query)
    end


    #result = ActiveRecord::Base.connection.exec_query('SELECT id, title, body FROM posts')
    #  result =ActiveRecord::Result
    #result =ActiveRecord::Calculations
    #Product.count_by_sql "SELECT COUNT(*) FROM sales s, customers c WHERE s.customer_id = c.id"
    #to_query #self.execQuery(:id)  # select distinct staff.* from staffs order_by station
    # A simple SQL query spanning multiple tables
    #   Post.find_by_sql "SELECT p.title, c.author FROM posts p, comments c WHERE p.id = c.post_id"
  end

  def chart_show

  end
  # GET /queries/new
  def new
    @query = Query.new
  end

  # GET /queries/1/edit
  def edit
  end

  # POST /queries
  # POST /queries.json
  def create
    @query = Query.new(query_params)

    respond_to do |format|
      if @query.save
        format.html { redirect_to @query, notice: 'Query was successfully created.' }
        format.json { render :show, status: :created, location: @query }
      else
        format.html { render :new }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /queries/1
  # PATCH/PUT /queries/1.json
  def update
    respond_to do |format|
      if @query.update(query_params)
        format.html { redirect_to @query, notice: 'Query was successfully updated.' }
        format.json { render :show, status: :ok, location: @query }
      else
        format.html { render :edit }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queries/1
  # DELETE /queries/1.json
  def destroy
    @query.destroy
    respond_to do |format|
      format.html { redirect_to queries_url, notice: 'Query was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_query
      @query = Query.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def query_params
      params.require(:query).permit(:id, :name, :table_list, :query_code, :query_string, :where_clause, :fields)
    end
end
