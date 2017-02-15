class FabrikaatSysteem
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  belongs_to :fabrikaat, required: true
  belongs_to :systeem, required: true
end
