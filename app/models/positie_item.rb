class PositieItem
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :quantity, type: Float, required: true

  belongs_to :positie, required: true
  belongs_to :item, required: true
end
