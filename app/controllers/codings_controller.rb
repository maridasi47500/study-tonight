class CodingsController < ApplicationController
  before_action :set_coding, only: %i[ show edit update destroy add mycoding]

  # GET /codings or /codings.json
  def index
    @codings = Coding.all
  end

  # GET /codings/1 or /codings/1.json
  def mycoding
    @anycoding=Anycoding.find params[:myid]
  end
  def show
  end
  def add
    @coding.somecodings.new
    render :edit
  end

  # GET /codings/new
  def new
    @coding = Coding.new
  end

  # GET /codings/1/edit
  def edit
  end

  # POST /codings or /codings.json
  def create
    @coding = Coding.new(coding_params)

    respond_to do |format|
      if @coding.save
        format.html { redirect_to coding_url(@coding), notice: "Coding was successfully created." }
        format.json { render :show, status: :created, location: @coding }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /codings/1 or /codings/1.json
  def update
    respond_to do |format|
      if @coding.update(coding_params)
        format.html { redirect_to coding_url(@coding), notice: "Coding was successfully updated." }
        format.json { render :show, status: :ok, location: @coding }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codings/1 or /codings/1.json
  def destroy
    @coding.destroy!

    respond_to do |format|
      format.html { redirect_to codings_url, notice: "Coding was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coding
      @coding = Coding.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coding_params
      params.require(:coding).permit(:name, :pic, :description, :programminglanguage_id,:somecodings_attributes=>{})
    end
end
