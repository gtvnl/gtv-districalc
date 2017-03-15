class PositieItem
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :quantity, type: Float, required: true

  belongs_to :positie, required: true
  belongs_to :item, required: true

  def total_price
    (self.quantity.to_d * self.item.netto_price.to_d).round(2)
  end
end
