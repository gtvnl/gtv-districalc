class Calculatie
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String, required: true
  field :number, :type => Integer, required: true, unique: true, length: {is: 8}

  belongs_to :fabrikaat, required: true
  belongs_to :systeem, required: true
end
