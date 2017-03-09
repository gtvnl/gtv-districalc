class CalculatiesController < ApplicationController

  include Concerns::CalculatieMethods
  include Concerns::Importable

  # GET /calculaties
  def index
    calculaties
  end

  # GET /calculaties/new
  def new
    calculatie
  end

  # GET /calculaties/1/edit
  def edit
    calculatie
  end

  # POST /calculaties
  def create
    # calculatie.fabrikaat = fabrikaat
    # calculatie.systeem = systeem

    if calculatie.save
      redirect_to calculaties_url, notice: 'Calculatie aangemaakt.'
    else
      render :new
    end
  end

  # PATCH/PUT /calculaties/1
  def update
    # calculatie.fabrikaat = fabrikaat
    # calculatie.systeem = systeem

    if calculatie.update(calculatie_params)
      redirect_to calculaties_url, notice: 'Calculatie gewijzigd.'
    else
      render :edit
    end
  end

  # DELETE /calculaties/1
  def destroy
    calculatie.destroy
    redirect_to calculaties_url, notice: 'Calculatie verwijderd.'
  end

end
