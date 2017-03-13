require 'rails_helper'

RSpec.describe "positie_items/edit", type: :view do
  before(:each) do
    @positie_item = assign(:positie_item, PositieItem.create!(
      :quantity => 1.5,
      :positie => nil,
      :item => ""
    ))
  end

  it "renders the edit positie_item form" do
    render

    assert_select "form[action=?][method=?]", positie_item_path(@positie_item), "post" do

      assert_select "input#positie_item_quantity[name=?]", "positie_item[quantity]"

      assert_select "input#positie_item_positie_id[name=?]", "positie_item[positie_id]"

      assert_select "input#positie_item_item[name=?]", "positie_item[item]"
    end
  end
end
