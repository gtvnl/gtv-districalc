require 'rails_helper'

RSpec.describe "positie_items/index", type: :view do
  before(:each) do
    assign(:positie_items, [
      PositieItem.create!(
        :quantity => 2.5,
        :positie => nil,
        :item => ""
      ),
      PositieItem.create!(
        :quantity => 2.5,
        :positie => nil,
        :item => ""
      )
    ])
  end

  it "renders a list of positie_items" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
