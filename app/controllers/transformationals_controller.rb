class TransformationalsController < ApplicationController
  before_action :set_transformational, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /transformationals or /transformationals.json
  def index
    @transformationals = Transformational.all
  end

  # GET /transformationals/1 or /transformationals/1.json
  def show
  end

  # GET /transformationals/new
  def new
    @transformational = Transformational.new
  end

  # GET /transformationals/1/edit
  def edit
  end

  # POST /transformationals or /transformationals.json
  def create
    @transformational = Transformational.new(transformational_params)
    @transformational.user = current_user

    respond_to do |format|
      if @transformational.save
        format.html { redirect_to transformational_url(@transformational), notice: "Transformational was successfully created." }
        format.json { render :show, status: :created, location: @transformational }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transformational.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transformationals/1 or /transformationals/1.json
  def update
    respond_to do |format|
      if @transformational.update(transformational_params)
        format.html { redirect_to transformational_url(@transformational), notice: "Transformational was successfully updated." }
        format.json { render :show, status: :ok, location: @transformational }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transformational.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transformationals/1 or /transformationals/1.json
  def destroy
    @transformational.destroy

    respond_to do |format|
      format.html { redirect_to transformationals_url, notice: "Transformational was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transformational
      @transformational = Transformational.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transformational_params
      params.require(:transformational).permit(:user_id, :answers, :answers2, :answers3, :answers4, :answers5, :answers6, :answers7, :answers8, :answers9, :answers10)
    end
end
