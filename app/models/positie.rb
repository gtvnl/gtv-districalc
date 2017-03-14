class Positie
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  before_validation :set_fabrikaat_and_systeem

  field :number,    type: Integer,  required: true, unique: {:scope => :calculatie}
  field :name,      type: String,   required: true, unique: true
  field :location,  type: String
  field :production_time, type: Integer

  belongs_to :calculatie, required: true

  belongs_to :fabrikaat, required: true
  belongs_to :systeem, required: true

  has_many :positie_items, dependent: :destroy
  has_many :items, through: :positie_items


    private
      def set_fabrikaat_and_systeem
        self.fabrikaat = Fabrikaat.first
        self.systeem = Systeem.first
      end
end
