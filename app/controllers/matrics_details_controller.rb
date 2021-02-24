class MatricsDetailsController < ApplicationController
  before_action :set_matrics_detail, only: %i[ show edit update destroy ]

  # GET /matrics_details or /matrics_details.json
  def index
    @matrics_details = MatricsDetail.all
  end

  # GET /matrics_details/1 or /matrics_details/1.json
  def show
  end

  # GET /matrics_details/new
  def new
    @matrics_detail = MatricsDetail.new
  end

  # GET /matrics_details/1/edit
  def edit
  end

  # POST /matrics_details or /matrics_details.json
  def create
    @matrics_detail = MatricsDetail.new(matrics_detail_params)

    respond_to do |format|
      if @matrics_detail.save
        format.html { redirect_to @matrics_detail, notice: "Matrics detail was successfully created." }
        format.json { render :show, status: :created, location: @matrics_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @matrics_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrics_details/1 or /matrics_details/1.json
  def update
    respond_to do |format|
      if @matrics_detail.update(matrics_detail_params)
        format.html { redirect_to @matrics_detail, notice: "Matrics detail was successfully updated." }
        format.json { render :show, status: :ok, location: @matrics_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @matrics_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrics_details/1 or /matrics_details/1.json
  def destroy
    @matrics_detail.destroy
    respond_to do |format|
      format.html { redirect_to matrics_details_url, notice: "Matrics detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrics_detail
      @matrics_detail = MatricsDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def matrics_detail_params
      params.require(:matrics_detail).permit(:year, :wrote, :passed)
    end
end
