require 'rails_helper'

RSpec.describe "positie_items/show", type: :view do
  before(:each) do
    @positie_item = assign(:positie_item, PositieItem.create!(
      :quantity => 2.5,
      :positie => nil,
      :item => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
