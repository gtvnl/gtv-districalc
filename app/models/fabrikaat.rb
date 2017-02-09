class Fabrikaat
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String

  has_many :systemen, dependent: :destroy
end
