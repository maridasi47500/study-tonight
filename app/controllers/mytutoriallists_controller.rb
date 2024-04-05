class MytutoriallistsController < ApplicationController
  before_action :set_mytutoriallist, only: %i[ show edit update destroy add]

  # GET /mytutoriallists or /mytutoriallists.json
  def index
    @mytutoriallists = Mytutoriallist.all
  end

  # GET /mytutoriallists/1 or /mytutoriallists/1.json
  def show
  end
  def add
    @mytutoriallist.tutorials.new
    render :edit
  end

  # GET /mytutoriallists/new
  def new
    @mytutoriallist = Mytutoriallist.new
  end

  # GET /mytutoriallists/1/edit
  def edit
  end

  # POST /mytutoriallists or /mytutoriallists.json
  def create
    @mytutoriallist = Mytutoriallist.new(mytutoriallist_params)

    respond_to do |format|
      if @mytutoriallist.save
        format.html { redirect_to mytutorial_url(@mytutoriallist.mytutorial), notice: "Mytutoriallist was successfully created." }
        format.json { render :show, status: :created, location: @mytutoriallist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mytutoriallist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytutoriallists/1 or /mytutoriallists/1.json
  def update
    respond_to do |format|
      if @mytutoriallist.update(mytutoriallist_params)
        format.html { redirect_to mytutorial_url(@mytutoriallist.mytutorial), notice: "Mytutoriallist was successfully updated." }
        format.json { render :show, status: :ok, location: @mytutoriallist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mytutoriallist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytutoriallists/1 or /mytutoriallists/1.json
  def destroy
    @mytutoriallist.destroy!

    respond_to do |format|
      format.html { redirect_to mytutoriallists_url, notice: "Mytutoriallist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytutoriallist
      @mytutoriallist = Mytutoriallist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mytutoriallist_params
      params.require(:mytutoriallist).permit(:mytutorial_id, :name,:tutorials_attributes=>{})
    end
end
