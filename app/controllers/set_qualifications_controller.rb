class SetQualificationsController < ApplicationController
  before_action :set_set_qualification, only: [:show, :edit, :update, :destroy]

  # GET /set_qualifications
  # GET /set_qualifications.json
  def index
    @set_qualifications = SetQualification.all
  end

  # GET /set_qualifications/1
  # GET /set_qualifications/1.json
  def show
  end

  # GET /set_qualifications/new
  def new
    @set_qualification = SetQualification.new
  end

  # GET /set_qualifications/1/edit
  def edit
  end

  # POST /set_qualifications
  # POST /set_qualifications.json
  def create
    @set_qualification = SetQualification.new(set_qualification_params)

    respond_to do |format|
      if @set_qualification.save
        format.html { redirect_to @set_qualification, notice: 'Set qualification was successfully created.' }
        format.json { render :show, status: :created, location: @set_qualification }
      else
        format.html { render :new }
        format.json { render json: @set_qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_qualifications/1
  # PATCH/PUT /set_qualifications/1.json
  def update
    respond_to do |format|
      if @set_qualification.update(set_qualification_params)
        format.html { redirect_to @set_qualification, notice: 'Set qualification was successfully updated.' }
        format.json { render :show, status: :ok, location: @set_qualification }
      else
        format.html { render :edit }
        format.json { render json: @set_qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_qualifications/1
  # DELETE /set_qualifications/1.json
  def destroy
    @set_qualification.destroy
    respond_to do |format|
      format.html { redirect_to set_qualifications_url, notice: 'Set qualification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_admin
    @admin = User.find(params[:admin_id])
  end
  # Use callbacks to share common setup or constraints between actions.
    def set_set_qualification
      @set_qualification = SetQualification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_qualification_params
      params.require(:set_qualification).permit(:code, :name, :display)
    end
end
