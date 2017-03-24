class Offerte
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  belongs_to :calculatie, required: true

  field :number, type: Integer, required: true, unique: true, length: { is: 8 }, index: true
  field :description
  field :posities

  field :profit
  field :hourly_wage

  def uurtarief
    default_wage = Preference.where(setting: "Uurtarief").first.value.to_d
    hourly_wage.nil? ? default_wage : hourly_wage
  end

  def winstmarge
    default_profit = Preference.where(setting: "Winstmarge").first.value.to_d
    profit.nil? ? default_profit : profit
  end


end
