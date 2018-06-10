class KindnessesController < ApplicationController
  before_action :set_kindness, only: [:show, :edit, :update, :destroy]

  # GET /kindnesses
  # GET /kindnesses.json
  def index
    @kindnesses = Kindness.all.order("created_at DESC")
  end

  # GET /kindnesses/1
  # GET /kindnesses/1.json
  def show
  end

  # GET /kindnesses/new
  def new
    @kindness = Kindness.new
  end

  # GET /kindnesses/1/edit
  def edit
  end

  # POST /kindnesses
  # POST /kindnesses.json
  def create
    @kindness = Kindness.new(kindness_params)

    respond_to do |format|
      if @kindness.save
        format.html { redirect_to kindnesses_url, notice: 'Kindness was successfully created.' }
        format.json { render :show, status: :created, location: @kindness }
      else
        format.html { render :new }
        format.json { render json: @kindness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kindnesses/1
  # PATCH/PUT /kindnesses/1.json
  def update
    respond_to do |format|
      if @kindness.update(kindness_params)
        format.html { redirect_to @kindness, notice: 'Kindness was successfully updated.' }
        format.json { render :show, status: :ok, location: @kindness }
      else
        format.html { render :edit }
        format.json { render json: @kindness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kindnesses/1
  # DELETE /kindnesses/1.json
  def destroy
    @kindness.destroy
    respond_to do |format|
      format.html { redirect_to kindnesses_url, notice: 'Kindness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kindness
      @kindness = Kindness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kindness_params
      params.require(:kindness).permit(:act, :friend_id, :author_id)
    end
end
