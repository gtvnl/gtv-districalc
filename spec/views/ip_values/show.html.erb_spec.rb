require 'rails_helper'

RSpec.describe "ip_values/show", type: :view do
  before(:each) do
    @ip_value = assign(:ip_value, IpValue.create!(
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
