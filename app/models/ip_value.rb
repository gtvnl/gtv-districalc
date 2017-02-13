class IpValue
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true, required: true
  field :description, type: String, required: true

  has_many :systemen
end
