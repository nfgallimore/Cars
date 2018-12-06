class CorvettesController < ApplicationController
  before_action :set_corvette, only: [:show, :edit, :update, :destroy]

  # GET /corvettes
  # GET /corvettes.json
  def index
    @corvettes = Corvette.all
  end

  # GET /corvettes/1
  # GET /corvettes/1.json
  def show
  end

  # GET /corvettes/new
  def new
    @corvette = Corvette.new
  end

  # GET /corvettes/1/edit
  def edit
  end

  # POST /corvettes
  # POST /corvettes.json
  def create
    @corvette = Corvette.new(corvette_params)

    respond_to do |format|
      if @corvette.save
        format.html { redirect_to @corvette, notice: 'Corvette was successfully created.' }
        format.json { render :show, status: :created, location: @corvette }
      else
        format.html { render :new }
        format.json { render json: @corvette.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corvettes/1
  # PATCH/PUT /corvettes/1.json
  def update
    respond_to do |format|
      if @corvette.update(corvette_params)
        format.html { redirect_to @corvette, notice: 'Corvette was successfully updated.' }
        format.json { render :show, status: :ok, location: @corvette }
      else
        format.html { render :edit }
        format.json { render json: @corvette.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corvettes/1
  # DELETE /corvettes/1.json
  def destroy
    @corvette.destroy
    respond_to do |format|
      format.html { redirect_to corvettes_url, notice: 'Corvette was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corvette
      @corvette = Corvette.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corvette_params
      params.require(:corvette).permit(:body_style, :miles, :year)
    end
end
