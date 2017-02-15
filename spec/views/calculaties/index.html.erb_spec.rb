require 'rails_helper'

RSpec.describe "calculaties/index", type: :view do
  before(:each) do
    assign(:calculaties, [
      Calculatie.create!(
        :name => "Name",
        :number => 2,
        :fabrikaat => "",
        :systeem => ""
      ),
      Calculatie.create!(
        :name => "Name",
        :number => 2,
        :fabrikaat => "",
        :systeem => ""
      )
    ])
  end

  it "renders a list of calculaties" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
