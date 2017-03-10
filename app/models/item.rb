class Item
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  paginates_per 12

  field :supplier, :type => String
  field :number, :type => String, unique: true
  field :description, :type => String
  field :bruto
  field :discount
  field :netto
end
