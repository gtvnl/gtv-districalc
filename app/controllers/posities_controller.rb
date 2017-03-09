class PositiesController < ApplicationController
  before_action :set_positie, only: [:show, :edit, :update, :destroy]

  # GET /posities
  def index
    @posities = Positie.all
  end

  # GET /posities/1
  def show
  end

  # GET /posities/new
  def new
    @positie = Positie.new
  end

  # GET /posities/1/edit
  def edit
  end

  # POST /posities
  def create
    @positie = Positie.new(positie_params)

    if @positie.save
      redirect_to @positie, notice: 'Positie was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /posities/1
  def update
    if @positie.update(positie_params)
      redirect_to @positie, notice: 'Positie was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /posities/1
  def destroy
    @positie.destroy
    redirect_to posities_url, notice: 'Positie was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_positie
      @positie = Positie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def positie_params
      params.require(:positie).permit(:number, :name, :location)
    end
end
