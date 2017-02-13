class Systeem
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, type: String, unique: true, required: true
  field :klass, type: String, required: true

  belongs_to :fabrikaat
  belongs_to :color
  belongs_to :ip_value
end
