class ContracteesController < ApplicationController
  before_action :set_contractee, only: [:show, :edit, :update, :destroy]

  # GET /contractees
  # GET /contractees.json
  def index
    @contractees = Contractee.all
  end

  # GET /contractees/1
  # GET /contractees/1.json
  def show
  end

  # GET /contractees/new
  def new
    @contractee = Contractee.new
  end

  # GET /contractees/1/edit
  def edit
  end

  # POST /contractees
  # POST /contractees.json
  def create
    @contractee = Contractee.new(contractee_params)

    respond_to do |format|
      if @contractee.save
        format.html { redirect_to @contractee, notice: 'Contractee was successfully created.' }
        format.json { render :show, status: :created, location: @contractee }
      else
        format.html { render :new }
        format.json { render json: @contractee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractees/1
  # PATCH/PUT /contractees/1.json
  def update
    respond_to do |format|
      if @contractee.update(contractee_params)
        format.html { redirect_to @contractee, notice: 'Contractee was successfully updated.' }
        format.json { render :show, status: :ok, location: @contractee }
      else
        format.html { render :edit }
        format.json { render json: @contractee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractees/1
  # DELETE /contractees/1.json
  def destroy
    @contractee.destroy
    respond_to do |format|
      format.html { redirect_to contractees_url, notice: 'Contractee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractee
      @contractee = Contractee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contractee_params
      params.require(:contractee).permit(:name, :email, :pass_active, :acc_active, :last_in, :password_digest)
    end
end
