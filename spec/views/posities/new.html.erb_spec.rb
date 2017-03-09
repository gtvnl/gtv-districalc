require 'rails_helper'

RSpec.describe "posities/new", type: :view do
  before(:each) do
    assign(:positie, Positie.new(
      :number => 1,
      :name => "MyString",
      :location => "MyString"
    ))
  end

  it "renders new positie form" do
    render

    assert_select "form[action=?][method=?]", posities_path, "post" do

      assert_select "input#positie_number[name=?]", "positie[number]"

      assert_select "input#positie_name[name=?]", "positie[name]"

      assert_select "input#positie_location[name=?]", "positie[location]"
    end
  end
end
