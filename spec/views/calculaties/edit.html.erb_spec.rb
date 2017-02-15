require 'rails_helper'

RSpec.describe "calculaties/edit", type: :view do
  before(:each) do
    @calculatie = assign(:calculatie, Calculatie.create!(
      :name => "MyString",
      :number => 1,
      :fabrikaat => "",
      :systeem => ""
    ))
  end

  it "renders the edit calculatie form" do
    render

    assert_select "form[action=?][method=?]", calculatie_path(@calculatie), "post" do

      assert_select "input#calculatie_name[name=?]", "calculatie[name]"

      assert_select "input#calculatie_number[name=?]", "calculatie[number]"

      assert_select "input#calculatie_fabrikaat[name=?]", "calculatie[fabrikaat]"

      assert_select "input#calculatie_systeem[name=?]", "calculatie[systeem]"
    end
  end
end
