class SetSectionsController < ApplicationController
  before_action :set_set_section, only: [:show, :edit, :update, :destroy]

  # GET /set_sections
  # GET /set_sections.json
  def index
    @set_sections = SetSection.all
  end

  # GET /set_sections/1
  # GET /set_sections/1.json
  def show
  end

  # GET /set_sections/new
  def new
    @set_section = SetSection.new
  end

  # GET /set_sections/1/edit
  def edit
  end

  # POST /set_sections
  # POST /set_sections.json
  def create
    @set_section = SetSection.new(set_section_params)

    respond_to do |format|
      if @set_section.save
        format.html { redirect_to set_sections_url, notice: 'Set section was successfully created.' }
        format.json { render :index, status: :created, location: @set_sections }
      else
        format.html { render :new }
        format.json { render json: @set_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_sections/1
  # PATCH/PUT /set_sections/1.json
  def update
    respond_to do |format|
      if @set_section.update(set_section_params)
        format.html { redirect_to set_sections_url, notice: 'Set section was successfully updated.' }
        format.json { render :index, status: :ok, location: @set_sections }
      else
        format.html { render :edit }
        format.json { render json: @set_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_sections/1
  # DELETE /set_sections/1.json
  def destroy
    @set_section.destroy
    respond_to do |format|
      format.html { redirect_to set_sections_url, notice: 'Set section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_section
      @set_section = SetSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_section_params
      params.require(:set_section).permit(:code, :name, :display)
    end
end
