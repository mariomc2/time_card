class TcardsController < ApplicationController
  before_action :set_tcard, only: [:show, :edit, :update, :destroy]

  # GET /tcards
  # GET /tcards.json
  def index
    @tcards = Tcard.all
  end

  # GET /tcards/1
  # GET /tcards/1.json
  def show
  end

  # GET /tcards/new
  def new
    @tcard = Tcard.new
  end

  # GET /tcards/1/edit
  def edit
  end

  # POST /tcards
  # POST /tcards.json
  def create
    @tcard = Tcard.new(tcard_params)

    respond_to do |format|
      if @tcard.save
        format.html { redirect_to @tcard, notice: 'Tcard was successfully created.' }
        format.json { render :show, status: :created, location: @tcard }
      else
        format.html { render :new }
        format.json { render json: @tcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tcards/1
  # PATCH/PUT /tcards/1.json
  def update
    respond_to do |format|
      if @tcard.update(tcard_params)
        format.html { redirect_to @tcard, notice: 'Tcard was successfully updated.' }
        format.json { render :show, status: :ok, location: @tcard }
      else
        format.html { render :edit }
        format.json { render json: @tcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tcards/1
  # DELETE /tcards/1.json
  def destroy
    @tcard.destroy
    respond_to do |format|
      format.html { redirect_to tcards_url, notice: 'Tcard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcard
      @tcard = Tcard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tcard_params
      params.require(:tcard).permit(:contractor_id, :contractee_id, :recruiter_id, :time_in, :time_out, :supervisor_id, :supervisor_status, :manager_id, :manager_status)
    end
end
