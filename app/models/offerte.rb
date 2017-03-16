class Offerte
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :number, type: Integer, required: true, unique: true, length: { is: 8 }, index: true
  field :description
  field :posities

  belongs_to :calculatie, required: true

end
