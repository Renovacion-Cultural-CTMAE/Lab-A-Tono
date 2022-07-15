class RelationalsController < ApplicationController
  before_action :set_relational, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /relationals or /relationals.json
  def index
    @relationals = Relational.all
  end

  # GET /relationals/1 or /relationals/1.json
  def show
  end

  # GET /relationals/new
  def new
    @relational = Relational.new
  end

  # GET /relationals/1/edit
  def edit
  end

  # POST /relationals or /relationals.json
  def create
    @relational = Relational.new(relational_params)
    @relational.user = current_user  
    respond_to do |format|
      if @relational.save
        format.html { redirect_to relational_url(@relational), notice: "Relational was successfully created." }
        format.json { render :show, status: :created, location: @relational }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @relational.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relationals/1 or /relationals/1.json
  def update
    respond_to do |format|
      if @relational.update(relational_params)
        format.html { redirect_to relational_url(@relational), notice: "Relational was successfully updated." }
        format.json { render :show, status: :ok, location: @relational }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @relational.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relationals/1 or /relationals/1.json
  def destroy
    @relational.destroy

    respond_to do |format|
      format.html { redirect_to relationals_url, notice: "Relational was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relational
      @relational = Relational.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def relational_params
      params.require(:relational).permit(:user_id, :answers, :answers2, :answers3, :answers4, :answers5, :answers6, :answers7, :answers8, :answers9, :answers10)
    end
end
