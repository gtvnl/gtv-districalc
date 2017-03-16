require 'rails_helper'

RSpec.describe "offertes/new", type: :view do
  before(:each) do
    assign(:offerte, Offerte.new(
      :number => 1,
      :description => "MyString"
    ))
  end

  it "renders new offerte form" do
    render

    assert_select "form[action=?][method=?]", offertes_path, "post" do

      assert_select "input#offerte_number[name=?]", "offerte[number]"

      assert_select "input#offerte_description[name=?]", "offerte[description]"
    end
  end
end
