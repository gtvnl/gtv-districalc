class Positie
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :number,    type: Integer,  required: true, unique: true
  field :name,      type: String,   required: true, unique: true
  field :location,  type: String

  belongs_to :calculatie, required: true
end
