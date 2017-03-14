class Item
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  paginates_per 10

  field :supplier, :type => String
  field :number, :type => String, unique: true
  field :description, :type => String
  field :bruto
  field :discount
  field :netto

  has_many :positie_items, dependent: :destroy
  has_many :posities, through: :positie_items

  def quantity(in_positie)
    PositieItem.where(item: self, positie: in_positie).first.quantity
  end

  def total_price(in_positie)
    unless self.discount == "0.0" && !self.netto.nil?
      (self.quantity(in_positie).to_d * (((100 - self.discount.to_d) / 100) * self.bruto.to_d)).round(2)
    else
      (self.quantity(in_positie).to_d * self.netto.to_d).round(2)
    end
  end
end
