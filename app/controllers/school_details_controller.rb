class SchoolDetailsController < ApplicationController
  before_action :set_school_detail, only: %i[ show edit update destroy ]

  # GET /school_details or /school_details.json
  def index
    @school_details = SchoolDetail.all
  end

  # GET /school_details/1 or /school_details/1.json
  def show
  end

  # GET /school_details/new
  def new
    @school_detail = SchoolDetail.new
  end

  # GET /school_details/1/edit
  def edit
  end

  # POST /school_details or /school_details.json
  def create
    @school_detail = SchoolDetail.new(school_detail_params)

    respond_to do |format|
      if @school_detail.save
        format.html { redirect_to @school_detail, notice: "School detail was successfully created." }
        format.json { render :show, status: :created, location: @school_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @school_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_details/1 or /school_details/1.json
  def update
    respond_to do |format|
      if @school_detail.update(school_detail_params)
        format.html { redirect_to @school_detail, notice: "School detail was successfully updated." }
        format.json { render :show, status: :ok, location: @school_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @school_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_details/1 or /school_details/1.json
  def destroy
    @school_detail.destroy
    respond_to do |format|
      format.html { redirect_to school_details_url, notice: "School detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_detail
      @school_detail = SchoolDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def school_detail_params
      params.require(:school_detail).permit(:name, :center_no, :emis)
    end
end
