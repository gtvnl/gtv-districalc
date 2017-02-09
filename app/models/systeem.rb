class Systeem
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
  
  belongs_to :fabrikaat
end
