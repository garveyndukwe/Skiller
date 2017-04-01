class SkillsController < ApplicationController
  before_action :set_user
  before_action :set_staff
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  # GET /skills
  # GET /skills.json
  def index
    @skills = Skill.where(staff_id: params[:staff_id])
  end

  # GET /skills/1
  # GET /skills/1.json
  def show
  end

  # GET /skills/new
  def new
    @skill = @staff.skills.build
  end

  # GET /skills/1/edit
  def edit
  end

  # POST /skills
  # POST /skills.json
  def create
    #@skill = Skill.new(skill_params)
    @skill = @staff.skills.build(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to [@staff, @skill], notice: 'Skill was successfully created.' }
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { render :new }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skills/1
  # PATCH/PUT /skills/1.json
  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to [@staff, @skill], notice: 'Skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to skills_url, notice: 'Skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def set_staff
    @staff = Staff.find(params[:staff_id])
  end

  # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = @staff.skills.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The forest you were looking for could not be found."
      redirect_to staff_skills_path
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_params
      params.require(:skill).permit(:id, :technical_score, :oral_score, :written_score, :analytic_score, :computing_score)
    end
end
