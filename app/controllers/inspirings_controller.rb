class InspiringsController < ApplicationController
  before_action :set_inspiring, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /inspirings or /inspirings.json
  def index
    @inspirings = Inspiring.all
  end

  # GET /inspirings/1 or /inspirings/1.json
  def show
  end

  # GET /inspirings/new
  def new
    @inspiring = Inspiring.new
  end

  # GET /inspirings/1/edit
  def edit
  end

  # POST /inspirings or /inspirings.json
  def create
    @inspiring = Inspiring.new(inspiring_params)
    @inspiring.user = current_user

    respond_to do |format|
      if @inspiring.save
        format.html { redirect_to inspiring_url(@inspiring), notice: "Inspiring was successfully created." }
        format.json { render :show, status: :created, location: @inspiring }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inspiring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inspirings/1 or /inspirings/1.json
  def update
    respond_to do |format|
      if @inspiring.update(inspiring_params)
        format.html { redirect_to inspiring_url(@inspiring), notice: "Inspiring was successfully updated." }
        format.json { render :show, status: :ok, location: @inspiring }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inspiring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inspirings/1 or /inspirings/1.json
  def destroy
    @inspiring.destroy

    respond_to do |format|
      format.html { redirect_to inspirings_url, notice: "Inspiring was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspiring
      @inspiring = Inspiring.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspiring_params
      params.require(:inspiring).permit(:user_id, :answers => [])
    end
end
