class StaffsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :set_staff, only: [:display,:show, :edit, :update, :destroy]

  # GET /staffs
  # GET /staffs.json
  def index
    @staffs = Staff.all.order("file_no DESC")
  end

  def display
  end
  # GET /staffs/1
  # GET /staffs/1.json
  def show
  end

  def search
    @staff = Staff.new
    if params[:search]
      @staff = Staff.search(params[:search])
    else
      @staff = Staff.find(params[:search])
    end
  end
  # GET /staffs/new
  def new
    @staff = Staff.new(@user)
  end

  # GET /staffs/1/edit
  def edit
  end

  # POST /staffs
  # POST /staffs.json
  def create
    @staff = @user.staff.new(staff_params)

    respond_to do |format|
      if @staff.save
        format.html { redirect_to @staff, notice: 'Staff was successfully created.' }
        format.json { render :show, status: :created, location: @staff }
      else
        format.html { render :new }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staffs/1
  # PATCH/PUT /staffs/1.json
  def update
    respond_to do |format|
      if @staff.update(staff_params)
        format.html { redirect_to @staff, notice: 'Staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff }
      else
        format.html { render :edit }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffs/1
  # DELETE /staffs/1.json
  def destroy
    @staff.destroy
    respond_to do |format|
      format.html { redirect_to staffs_url, notice: 'Staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_user
    @user = User.find(params[:user_id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The user could not be found."
    redirect_to root_path
  end

  # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The staff could not be found."
      redirect_to staff_path
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_params
      params.require(:staff).permit(:id, :file_no, :last_name, :first_name, :middle_name, :rank, :gender, :area_of_specialization, :qualification, :station, :department, :section, :grade, :step, :submitted)
    end
end
