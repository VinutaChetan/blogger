class CatregoriesController < ApplicationController
  before_action :set_catregory, only: [:show, :edit, :update, :destroy]

  # GET /catregories
  # GET /catregories.json
  def index
    @catregories = Catregory.all
  end

  # GET /catregories/1
  # GET /catregories/1.json
  def show
  end

  # GET /catregories/new
  def new
    @catregory = Catregory.new
  end

  # GET /catregories/1/edit
  def edit
  end

  # POST /catregories
  # POST /catregories.json
  def create
    @catregory = Catregory.new(catregory_params)

    respond_to do |format|
      if @catregory.save
        format.html { redirect_to @catregory, notice: 'Catregory was successfully created.' }
        format.json { render :show, status: :created, location: @catregory }
      else
        format.html { render :new }
        format.json { render json: @catregory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catregories/1
  # PATCH/PUT /catregories/1.json
  def update
    respond_to do |format|
      if @catregory.update(catregory_params)
        format.html { redirect_to @catregory, notice: 'Catregory was successfully updated.' }
        format.json { render :show, status: :ok, location: @catregory }
      else
        format.html { render :edit }
        format.json { render json: @catregory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catregories/1
  # DELETE /catregories/1.json
  def destroy
    @catregory.destroy
    respond_to do |format|
      format.html { redirect_to catregories_url, notice: 'Catregory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catregory
      @catregory = Catregory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catregory_params
      params.require(:catregory).permit(:name)
    end
end
