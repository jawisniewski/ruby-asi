class TramwajsController < ApplicationController
  before_action :set_tramwaj, only: [:show, :edit, :update, :destroy]

  # GET /tramwajs
  # GET /tramwajs.json
  def index
    @tramwajs = Tramwaj.all
  end

  # GET /tramwajs/1
  # GET /tramwajs/1.json
  def show
  end

  # GET /tramwajs/new
  def new
    @tramwaj = Tramwaj.new
  end

  # GET /tramwajs/1/edit
  def edit
  end

  # POST /tramwajs
  # POST /tramwajs.json
  def create
    @tramwaj = Tramwaj.new(tramwaj_params)

    respond_to do |format|
      if @tramwaj.save
        format.html { redirect_to @tramwaj, notice: 'Tramwaj został dodany.' }
        format.json { render :show, status: :created, location: @tramwaj }
      else
        format.html { render :new }
        format.json { render json: @tramwaj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tramwajs/1
  # PATCH/PUT /tramwajs/1.json
  def update
    respond_to do |format|
      if @tramwaj.update(tramwaj_params)
        format.html { redirect_to @tramwaj, notice: 'Tramwaj edytowano.' }
        format.json { render :show, status: :ok, location: @tramwaj }
      else
        format.html { render :edit }
        format.json { render json: @tramwaj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tramwajs/1
  # DELETE /tramwajs/1.json
  def destroy
    @tramwaj.destroy
    respond_to do |format|
      format.html { redirect_to tramwajs_url, notice: 'Tramwaj został usunięty.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tramwaj
      @tramwaj = Tramwaj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tramwaj_params
      params.require(:tramwaj).permit(:nazwa, :rok_produkcji, :opis)
    end
end
