class Calculatie
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :number, type: Integer, required: true, unique: true, length: { is: 8 }, index: true
  field :name, type: String, required: true

  has_many :posities, dependent: :destroy
  has_one :offerte

  def uurtarief
    Preference.where(setting: "Uurtarief").first.value.to_d
  end

  def winstmarge
    Preference.where(setting: "Winstmarge").first.value.to_d
  end

  def info
    "#{number} - #{name}"
  end

  def pos_total
    self.posities.map{ |positie|
      {
        number: positie.number,
        aantal: 1,
        name: positie.name,
        fabrikaat: positie.fabrikaat.name,
        systeem: positie.systeem.name,
        netto: positie.total_netto.to_i.ceil
      }
    }
  end

end
