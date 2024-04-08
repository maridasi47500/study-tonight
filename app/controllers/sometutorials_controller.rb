class SometutorialsController < ApplicationController
  before_action :set_sometutorial, only: %i[ show edit update destroy add tuto]

  # GET /sometutorials or /sometutorials.json
  def index
    @sometutorials = Sometutorial.all
  end
  def tuto
    @tutorial=Tutorial.find params[:myid]
  end

  # GET /sometutorials/1 or /sometutorials/1.json
  def show
  end
  def add
    @sometutorial.mytutoriallists.new
    render :edit
  end

  # GET /sometutorials/new
  def new
    @sometutorial = Sometutorial.new
  end

  # GET /sometutorials/1/edit
  def edit
  end

  # POST /sometutorials or /sometutorials.json
  def create
    @sometutorial = Sometutorial.new(sometutorial_params)

    respond_to do |format|
      if @sometutorial.save
        format.html { redirect_to sometutorial_url(@sometutorial), notice: "Sometutorial was successfully created." }
        format.json { render :show, status: :created, location: @sometutorial }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sometutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sometutorials/1 or /sometutorials/1.json
  def update
    respond_to do |format|
      if @sometutorial.update(sometutorial_params)
        format.html { redirect_to sometutorial_url(@sometutorial), notice: "Sometutorial was successfully updated." }
        format.json { render :show, status: :ok, location: @sometutorial }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sometutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sometutorials/1 or /sometutorials/1.json
  def destroy
    @sometutorial.destroy!

    respond_to do |format|
      format.html { redirect_to sometutorials_url, notice: "Sometutorial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sometutorial
      @sometutorial = Sometutorial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sometutorial_params
      params.require(:sometutorial).permit(:mytutorial_id, :title, :description,:mytutoriallists_attributes=>{})
    end
end
