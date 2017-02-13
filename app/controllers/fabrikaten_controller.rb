class FabrikatenController < ApplicationController
  before_action :set_fabrikaat, only: [:show, :edit, :update, :destroy]

  # GET /fabrikaten
  def index
    @fabrikaten = Fabrikaat.all
  end

  # GET /fabrikaten/1
  def show
  end

  # GET /fabrikaten/new
  def new
    @fabrikaat = Fabrikaat.new
  end

  # GET /fabrikaten/1/edit
  def edit
  end

  # POST /fabrikaten
  def create
    @fabrikaat = Fabrikaat.new(fabrikaat_params)

    if @fabrikaat.save
      redirect_to fabrikaten_url, notice: 'Fabrikaat aangemaakt.'
    else
      render :new
    end
  end

  # PATCH/PUT /fabrikaten/1
  def update
    if @fabrikaat.update(fabrikaat_params)
      redirect_to fabrikaten_url, notice: 'Fabrikaat gewijzigd.'
    else
      render :edit
    end
  end

  # DELETE /fabrikaten/1
  def destroy
    @fabrikaat.destroy
    redirect_to fabrikaten_url, notice: 'Fabrikaat verwijderd.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fabrikaat
      @fabrikaat = Fabrikaat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fabrikaat_params
      params.require(:fabrikaat).permit(:name)
    end
end
