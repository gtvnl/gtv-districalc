class PositieItemsController < ApplicationController
  before_action :set_positie_item, only: [:show, :edit, :update, :destroy]

  # GET /positie_items
  def index
    @positie_items = PositieItem.all
  end

  # GET /positie_items/1
  def show
  end

  # GET /positie_items/new
  def new
    @positie_item = PositieItem.new
  end

  # GET /positie_items/1/edit
  def edit
  end

  # POST /positie_items
  def create
    @positie_item = PositieItem.new(positie_item_params)

    if @positie_item.save
      redirect_to @positie_item, notice: 'Positie item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /positie_items/1
  def update
    if @positie_item.update(positie_item_params)
      redirect_to @positie_item, notice: 'Positie item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /positie_items/1
  def destroy
    @positie_item.destroy
    redirect_to positie_items_url, notice: 'Positie item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_positie_item
      @positie_item = PositieItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def positie_item_params
      params.require(:positie_item).permit(:quantity, :positie_id, :item)
    end
end
