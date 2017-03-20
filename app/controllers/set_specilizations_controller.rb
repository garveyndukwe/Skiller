class SetSpecilizationsController < ApplicationController
  before_action :set_set_specilization, only: [:show, :edit, :update, :destroy]

  # GET /set_specilizations
  # GET /set_specilizations.json
  def index
    @set_specilizations = SetSpecilization.all
  end

  # GET /set_specilizations/1
  # GET /set_specilizations/1.json
  def show
  end

  # GET /set_specilizations/new
  def new
    @set_specilization = SetSpecilization.new
  end

  # GET /set_specilizations/1/edit
  def edit
  end

  # POST /set_specilizations
  # POST /set_specilizations.json
  def create
    @set_specilization = SetSpecilization.new(set_specilization_params)

    respond_to do |format|
      if @set_specilization.save
        format.html { redirect_to @set_specilization, notice: 'Set specilization was successfully created.' }
        format.json { render :show, status: :created, location: @set_specilization }
      else
        format.html { render :new }
        format.json { render json: @set_specilization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_specilizations/1
  # PATCH/PUT /set_specilizations/1.json
  def update
    respond_to do |format|
      if @set_specilization.update(set_specilization_params)
        format.html { redirect_to @set_specilization, notice: 'Set specilization was successfully updated.' }
        format.json { render :show, status: :ok, location: @set_specilization }
      else
        format.html { render :edit }
        format.json { render json: @set_specilization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_specilizations/1
  # DELETE /set_specilizations/1.json
  def destroy
    @set_specilization.destroy
    respond_to do |format|
      format.html { redirect_to set_specilizations_url, notice: 'Set specilization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_specilization
      @set_specilization = SetSpecilization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_specilization_params
      params.require(:set_specilization).permit(:code, :name, :display)
    end
end
