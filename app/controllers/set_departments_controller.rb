class SetDepartmentsController < ApplicationController
  before_action :set_set_department, only: [:show, :edit, :update, :destroy]

  # GET /set_departments
  # GET /set_departments.json
  def index
    @set_departments = SetDepartment.all
  end

  # GET /set_departments/1
  # GET /set_departments/1.json
  def show
  end

  # GET /set_departments/new
  def new
    @set_department = SetDepartment.new
  end

  # GET /set_departments/1/edit
  def edit
  end

  # POST /set_departments
  # POST /set_departments.json
  def create
    @set_department = SetDepartment.new(set_department_params)

    respond_to do |format|
      if @set_department.save
        format.html { redirect_to @set_department, notice: 'Set department was successfully created.' }
        format.json { render :show, status: :created, location: @set_department }
      else
        format.html { render :new }
        format.json { render json: @set_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_departments/1
  # PATCH/PUT /set_departments/1.json
  def update
    respond_to do |format|
      if @set_department.update(set_department_params)
        format.html { redirect_to @set_department, notice: 'Set department was successfully updated.' }
        format.json { render :show, status: :ok, location: @set_department }
      else
        format.html { render :edit }
        format.json { render json: @set_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_departments/1
  # DELETE /set_departments/1.json
  def destroy
    @set_department.destroy
    respond_to do |format|
      format.html { redirect_to set_departments_url, notice: 'Set department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
    def set_set_department
      @set_department = SetDepartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_department_params
      params.require(:set_department).permit(:code, :name, :display)
    end
end
