require 'rails_helper'

RSpec.describe "offertes/index", type: :view do
  before(:each) do
    assign(:offertes, [
      Offerte.create!(
        :number => 2,
        :description => "Description"
      ),
      Offerte.create!(
        :number => 2,
        :description => "Description"
      )
    ])
  end

  it "renders a list of offertes" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
