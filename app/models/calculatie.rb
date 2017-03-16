class Calculatie
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :number, type: Integer, required: true, unique: true, length: { is: 8 }, index: true
  field :name, type: String, required: true

  field :hourly_wage, type: Integer
  field :profit, type: Integer

  def uurtarief
    default_wage = Preference.where(setting: "Uurtarief").first.value.to_d
    hourly_wage.nil? ? default_wage : hourly_wage
  end

  def winstmarge
    default_profit = Preference.where(setting: "Winstmarge").first.value.to_d
    profit.nil? ? default_profit : profit
  end

  has_many :posities, dependent: :destroy
  has_one :offerte

  def info
    "#{number} - #{name}"
  end

end
