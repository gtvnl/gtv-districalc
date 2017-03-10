class PositiesController < ApplicationController

  include Concerns::PositieMethods

  def alle_posities
    @posities = Positie.all
  end

  # GET /posities
  def index
    posities
  end

  # GET /posities/new
  def new
    positie
  end

  def show
  end

  # GET /posities/1/edit
  def edit
    positie
  end

  # POST /posities
  def create
    positie.calculatie = calculatie
    positie.fabrikaat = fabrikaat
    positie.systeem = systeem
    
    if positie.save
      redirect_to calculatie_posities_url, notice: 'Positie aangemaakt.'
    else
      render :new
    end
  end

  # PATCH/PUT /posities/1
  def update
    positie.calculatie = calculatie
    positie.fabrikaat = fabrikaat
    positie.systeem = systeem

    if positie.update(positie_params)
      redirect_to calculatie_posities_url, notice: 'Positie gewijzigd.'
    else
      render :edit
    end
  end

  # DELETE /posities/1
  def destroy
    positie.destroy
    redirect_to calculatie_posities_url, notice: 'Positie verwijderd.'
  end

end
