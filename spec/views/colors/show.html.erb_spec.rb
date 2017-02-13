require 'rails_helper'

RSpec.describe "colors/show", type: :view do
  before(:each) do
    @color = assign(:color, Color.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
