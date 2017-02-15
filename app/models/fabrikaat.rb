class Fabrikaat
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true, required: true

  has_many :systemen, dependent: :destroy
  has_many :calculaties

  has_many :fabrikaat_systemen, dependent: :destroy
end
