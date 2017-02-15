require 'rails_helper'

RSpec.describe "calculaties/new", type: :view do
  before(:each) do
    assign(:calculatie, Calculatie.new(
      :name => "MyString",
      :number => 1,
      :fabrikaat => "",
      :systeem => ""
    ))
  end

  it "renders new calculatie form" do
    render

    assert_select "form[action=?][method=?]", calculaties_path, "post" do

      assert_select "input#calculatie_name[name=?]", "calculatie[name]"

      assert_select "input#calculatie_number[name=?]", "calculatie[number]"

      assert_select "input#calculatie_fabrikaat[name=?]", "calculatie[fabrikaat]"

      assert_select "input#calculatie_systeem[name=?]", "calculatie[systeem]"
    end
  end
end
