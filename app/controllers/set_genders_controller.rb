class SetGendersController < ApplicationController
  before_action :set_set_gender, only: [:show, :edit, :update, :destroy]

  # GET /set_genders
  # GET /set_genders.json
  def index
    @set_genders = SetGender.all
  end

  # GET /set_genders/1
  # GET /set_genders/1.json
  def show
  end

  # GET /set_genders/new
  def new
    @set_gender = SetGender.new
  end

  # GET /set_genders/1/edit
  def edit
  end

  # POST /set_genders
  # POST /set_genders.json
  def create
    @set_gender = SetGender.new(set_gender_params)

    respond_to do |format|
      if @set_gender.save
        format.html { redirect_to @set_gender, notice: 'Set gender was successfully created.' }
        format.json { render :show, status: :created, location: @set_gender }
      else
        format.html { render :new }
        format.json { render json: @set_gender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_genders/1
  # PATCH/PUT /set_genders/1.json
  def update
    respond_to do |format|
      if @set_gender.update(set_gender_params)
        format.html { redirect_to @set_gender, notice: 'Set gender was successfully updated.' }
        format.json { render :show, status: :ok, location: @set_gender }
      else
        format.html { render :edit }
        format.json { render json: @set_gender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_genders/1
  # DELETE /set_genders/1.json
  def destroy
    @set_gender.destroy
    respond_to do |format|
      format.html { redirect_to set_genders_url, notice: 'Set gender was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_admin
    @admin = User.find(params[:admin_id])
  end

  # Use callbacks to share common setup or constraints between actions.
    def set_set_gender
      @set_gender = SetGender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_gender_params
      params.require(:set_gender).permit(:code, :display)
    end
end
