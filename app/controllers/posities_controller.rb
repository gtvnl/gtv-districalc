class PositiesController < ApplicationController

  include Concerns::PositieMethods

  def all_posities
    @posities = Positie.all
  end

  # GET /posities
  def index
    calculatie
    @totaal_uren ||=  @calculatie.posities.collect.pluck(:production_time).sum
    @montage_kosten ||= (@totaal_uren * (@calculatie.uurtarief.to_d / 3600)).round(2)
    @totaal_bruto ||=  @calculatie.posities.collect.pluck(:total_bruto).sum
    @totaal_netto ||= @calculatie.posities.collect.pluck(:total_netto).sum
    @totaal_calculatie ||= @totaal_netto + @montage_kosten
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
