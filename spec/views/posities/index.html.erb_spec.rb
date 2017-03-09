require 'rails_helper'

RSpec.describe "posities/index", type: :view do
  before(:each) do
    assign(:posities, [
      Positie.create!(
        :number => 2,
        :name => "Name",
        :location => "Location"
      ),
      Positie.create!(
        :number => 2,
        :name => "Name",
        :location => "Location"
      )
    ])
  end

  it "renders a list of posities" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
