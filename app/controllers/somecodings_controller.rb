class SomecodingsController < ApplicationController
  before_action :set_somecoding, only: %i[ show edit update destroy add]

  # GET /somecodings or /somecodings.json
  def index
    @somecodings = Somecoding.all
  end

  # GET /somecodings/1 or /somecodings/1.json
  def show
  end
  def add
    @somecoding.anycodings.new
    render :edit
  end

  # GET /somecodings/new
  def new
    @somecoding = Somecoding.new
  end

  # GET /somecodings/1/edit
  def edit
  end

  # POST /somecodings or /somecodings.json
  def create
    @somecoding = Somecoding.new(somecoding_params)

    respond_to do |format|
      if @somecoding.save
        format.html { redirect_to coding_url(@somecoding.coding), notice: "Somecoding was successfully created." }
        format.json { render :show, status: :created, location: @somecoding }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @somecoding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /somecodings/1 or /somecodings/1.json
  def update
    respond_to do |format|
      if @somecoding.update(somecoding_params)
        format.html { redirect_to coding_url(@somecoding.coding), notice: "Somecoding was successfully updated." }
        format.json { render :show, status: :ok, location: @somecoding }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @somecoding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /somecodings/1 or /somecodings/1.json
  def destroy
    @somecoding.destroy!

    respond_to do |format|
      format.html { redirect_to somecodings_url, notice: "Somecoding was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_somecoding
      @somecoding = Somecoding.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def somecoding_params
      params.require(:somecoding).permit(:coding_id, :name, :pic,:anycodings_attributes=>{})
    end
end
