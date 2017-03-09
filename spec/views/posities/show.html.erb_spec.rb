require 'rails_helper'

RSpec.describe "posities/show", type: :view do
  before(:each) do
    @positie = assign(:positie, Positie.create!(
      :number => 2,
      :name => "Name",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
  end
end
