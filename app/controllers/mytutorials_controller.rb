class MytutorialsController < ApplicationController
  before_action :set_mytutorial, only: %i[ show edit update destroy add]

  # GET /mytutorials or /mytutorials.json
  def index
    @mytutorials = Mytutorial.all
  end

  # GET /mytutorials/1 or /mytutorials/1.json
  def add
    @mytutorial.mytutoriallists.new
    render :edit
  end
  def show
  end

  # GET /mytutorials/new
  def new
    @mytutorial = Mytutorial.new
  end

  # GET /mytutorials/1/edit
  def edit
  end

  # POST /mytutorials or /mytutorials.json
  def create
    @mytutorial = Mytutorial.new(mytutorial_params)

    respond_to do |format|
      if @mytutorial.save
        format.html { redirect_to mytutorial_url(@mytutorial), notice: "Mytutorial was successfully created." }
        format.json { render :show, status: :created, location: @mytutorial }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mytutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytutorials/1 or /mytutorials/1.json
  def update
    respond_to do |format|
      if @mytutorial.update(mytutorial_params)
        format.html { redirect_to mytutorial_url(@mytutorial), notice: "Mytutorial was successfully updated." }
        format.json { render :show, status: :ok, location: @mytutorial }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mytutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytutorials/1 or /mytutorials/1.json
  def destroy
    @mytutorial.destroy!

    respond_to do |format|
      format.html { redirect_to mytutorials_url, notice: "Mytutorial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytutorial
      @mytutorial = Mytutorial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mytutorial_params
      params.require(:mytutorial).permit(:name, :pic, :description,:mytutoriallists_attributes=>{})
    end
end
