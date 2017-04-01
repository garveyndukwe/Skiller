class SetRanksController < ApplicationController
  before_action :set_set_rank, only: [:show, :edit, :update, :destroy]

  # GET /set_ranks
  # GET /set_ranks.json
  def index
    @set_ranks = SetRank.all
  end

  # GET /set_ranks/1
  # GET /set_ranks/1.json
  def show
  end

  # GET /set_ranks/new
  def new
    @set_rank = SetRank.new
  end

  # GET /set_ranks/1/edit
  def edit
  end

  # POST /set_ranks
  # POST /set_ranks.json
  def create
    @set_rank = SetRank.new(set_rank_params)

    respond_to do |format|
      if @set_rank.save
        format.html { redirect_to set_ranks_url, notice: 'Set rank was successfully created.' }
        format.json { render :index, status: :created, location: @set_ranks }
      else
        format.html { render :new }
        format.json { render json: @set_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_ranks/1
  # PATCH/PUT /set_ranks/1.json
  def update
    respond_to do |format|
      if @set_rank.update(set_rank_params)
        format.html { redirect_to set_ranks_url, notice: 'Set rank was successfully updated.' }
        format.json { render :index, status: :ok, location: @set_ranks }
      else
        format.html { render :edit }
        format.json { render json: @set_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_ranks/1
  # DELETE /set_ranks/1.json
  def destroy
    @set_rank.destroy
    respond_to do |format|
      format.html { redirect_to set_ranks_url, notice: 'Set rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_admin
    @admin = User.find(params[:admin_id])
  end
  # Use callbacks to share common setup or constraints between actions.
    def set_set_rank
      @set_rank = SetRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_rank_params
      params.require(:set_rank).permit(:code, :name, :display)
    end
end
