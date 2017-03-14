class Calculatie
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String, required: true
  field :number, :type => Integer, required: true, unique: true, length: { is: 8 }

  field :hourly_wage, type: Integer, default: 40
  field :profit, type: Integer, default: 15

  has_many :posities, dependent: :destroy
end
