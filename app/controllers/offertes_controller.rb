class OffertesController < ApplicationController
  include Concerns::OfferteMethods

  # GET /offertes
  def index
    offertes
  end

  # GET /offertes/new
  def new
    offerte
  end

  # GET /offertes/1/edit
  def edit
    offerte
  end

  # POST /offertes
  def create
    offerte.calculatie = calculatie

    if offerte.save
      redirect_to offertes_url, notice: 'Offerte aangemaakt.'
    else
      render :new
    end
  end

  # PATCH/PUT /offertes/1
  def update
    offerte.calculatie = calculatie

    if offerte.update(offerte_params)
      redirect_to offertes_url, notice: 'Offerte gewijzigd.'
    else
      render :edit
    end
  end

  # DELETE /offertes/1
  def destroy
    offerte.destroy
    redirect_to offertes_url, notice: 'Offerte verwijderd.'
  end

end
