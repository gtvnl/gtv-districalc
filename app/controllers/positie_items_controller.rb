class PositieItemsController < ApplicationController
  include Concerns::PositieItemMethods

  # GET /positie_items
  def index
    positie_items
  end

  # GET /positie_items/new
  def new
    positie_item
  end

  # GET /positie_items/1/edit
  def edit
    positie_item
  end

  def show
  end

  # POST /positie_items
  def create
    if positie_item.save
      redirect_to positie_positie_items_url, notice: 'Aantallen aangemaakt.'
    else
      render :new
    end
  end

  # PATCH/PUT /positie_items/1
  def update
    if positie_item.update(positie_item_params)
      redirect_to positie_positie_items_url, notice: "Aantallen van artikel '#{positie_item.item.info}' gewijzigd."
    else
      render :edit
    end
  end

  # DELETE /positie_items/1
  def destroy
    ppositie_item.destroy
    redirect_to positie_positie_items_url, notice: 'Aantallen verwijderd.'
  end

end
