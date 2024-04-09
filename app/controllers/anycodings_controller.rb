class AnycodingsController < ApplicationController
  before_action :set_anycoding, only: %i[ show edit update destroy ]

  # GET /anycodings or /anycodings.json
  def index
    @anycodings = Anycoding.all
  end

  # GET /anycodings/1 or /anycodings/1.json
  def show
  end

  # GET /anycodings/new
  def new
    @anycoding = Anycoding.new
  end

  # GET /anycodings/1/edit
  def edit
  end

  # POST /anycodings or /anycodings.json
  def create
    @anycoding = Anycoding.new(anycoding_params)

    respond_to do |format|
      if @anycoding.save
        format.html { redirect_to anycoding_url(@anycoding), notice: "Anycoding was successfully created." }
        format.json { render :show, status: :created, location: @anycoding }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anycoding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anycodings/1 or /anycodings/1.json
  def update
    respond_to do |format|
      if @anycoding.update(anycoding_params)
        format.html { redirect_to anycoding_url(@anycoding), notice: "Anycoding was successfully updated." }
        format.json { render :show, status: :ok, location: @anycoding }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anycoding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anycodings/1 or /anycodings/1.json
  def destroy
    @anycoding.destroy!

    respond_to do |format|
      format.html { redirect_to anycodings_url, notice: "Anycoding was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anycoding
      @anycoding = Anycoding.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anycoding_params
      params.require(:anycoding).permit(:somecoding_id, :name, :content, :code)
    end
end
