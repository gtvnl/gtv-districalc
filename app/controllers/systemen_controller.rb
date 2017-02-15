class SystemenController < ApplicationController

  include Concerns::SystemMethods

  def alle_systemen
    @systemen = Systeem.all
  end

  # GET /systemen
  def index
    systemen
  end

  # GET /systemen/new
  def new
    systeem
  end

  # GET /systemen/1/edit
  def edit
    systeem
  end

  # POST /systemen
  def create
    systeem.fabrikaat = fabrikaat
    systeem.color = color
    systeem.ip_value = ip_value

    if systeem.save
      FabrikaatSysteem.create(fabrikaat: systeem.fabrikaat, systeem: systeem)

      redirect_to fabrikaat_systemen_url, notice: 'Systeem aangemaakt.'
    else
      render :new
    end
  end

  # PATCH/PUT /systemen/1
  def update
    systeem.fabrikaat = fabrikaat
    systeem.color = color
    systeem.ip_value = ip_value

    if systeem.update(systeem_params)
      redirect_to fabrikaat_systemen_url, notice: 'Systeem gewijzigd.'
    else
      render :edit
    end
  end

  # DELETE /systemen/1
  def destroy
    systeem.destroy
    redirect_to fabrikaat_systemen_url, notice: 'Systeem verwijderd.'
  end


end
