require 'rails_helper'

RSpec.describe "calculaties/show", type: :view do
  before(:each) do
    @calculatie = assign(:calculatie, Calculatie.create!(
      :name => "Name",
      :number => 2,
      :fabrikaat => "",
      :systeem => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
