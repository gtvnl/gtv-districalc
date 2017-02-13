class IpValuesController < ApplicationController
  before_action :set_ip_value, only: [:show, :edit, :update, :destroy]

  # GET /ip_values
  def index
    @ip_values = IpValue.all
  end

  # GET /ip_values/1
  def show
  end

  # GET /ip_values/new
  def new
    @ip_value = IpValue.new
  end

  # GET /ip_values/1/edit
  def edit
  end

  # POST /ip_values
  def create
    @ip_value = IpValue.new(ip_value_params)

    if @ip_value.save
      redirect_to ip_values_url, notice: 'IP waarde aangemaakt.'
    else
      render :new
    end
  end

  # PATCH/PUT /ip_values/1
  def update
    if @ip_value.update(ip_value_params)
      redirect_to ip_values_url, notice: 'IP waarde gewijzigd.'
    else
      render :edit
    end
  end

  # DELETE /ip_values/1
  def destroy
    @ip_value.destroy
    redirect_to ip_values_url, notice: 'IP waarde verwijderd.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip_value
      @ip_value = IpValue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ip_value_params
      params.require(:ip_value).permit(:name, :description)
    end
end
