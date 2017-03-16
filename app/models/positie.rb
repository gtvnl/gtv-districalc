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

  def total_netto
    @total_netto = 0.0
    PositieItem.where(positie: self).join(:item).map do |pos|
      unless pos.item.discount == "0.0" && !pos.item.netto.nil?
        @total_netto += (pos.quantity.to_d * (((100 - pos.item.discount.to_d) / 100) * pos.item.bruto.to_d))
      else
        @total_netto += (pos.quantity.to_d * pos.item.netto.to_d)
      end
    end
    @total_netto.round(2)
  end

  def total_bruto
    @total_bruto = 0.0
    PositieItem.where(positie: self).join(:item).map do |pos|
      @total_bruto += (pos.quantity.to_d * pos.item.bruto.to_d)
    end
    @total_bruto.round(2)
  end
  
    private
      def set_fabrikaat_and_systeem
        self.fabrikaat = Fabrikaat.first
        self.systeem = Systeem.first
      end
end
