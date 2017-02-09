class SystemenController < ApplicationController
  before_action :set_fabrikaat
  before_action :set_systeem, only: [:show, :edit, :update, :destroy]

  # GET /systemen
  def index
    @systemen = Systeem.all
  end

  # GET /systemen/1
  def show
  end

  # GET /systemen/new
  def new
    @systeem = Systeem.new
  end

  # GET /systemen/1/edit
  def edit
  end

  # POST /systemen
  def create
    @systeem = Systeem.new(systeem_params)

    if @systeem.save
      redirect_to @systeem, notice: 'Systeem was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /systemen/1
  def update
    if @systeem.update(systeem_params)
      redirect_to @systeem, notice: 'Systeem was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /systemen/1
  def destroy
    @systeem.destroy
    redirect_to systemen_url, notice: 'Systeem was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fabrikaat
      @fabrikaat = Fabrikaat.find(params[:fabrikaat_id])
    end

    def set_systeem
      @systeem = Systeem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def systeem_params
      params.require(:systeem).permit(:name)
    end
end
