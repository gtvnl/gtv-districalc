require 'rails_helper'

RSpec.describe "ip_values/index", type: :view do
  before(:each) do
    assign(:ip_values, [
      IpValue.create!(
        :name => "Name",
        :description => "Description"
      ),
      IpValue.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of ip_values" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
