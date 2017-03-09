require 'rails_helper'

RSpec.describe "posities/edit", type: :view do
  before(:each) do
    @positie = assign(:positie, Positie.create!(
      :number => 1,
      :name => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit positie form" do
    render

    assert_select "form[action=?][method=?]", positie_path(@positie), "post" do

      assert_select "input#positie_number[name=?]", "positie[number]"

      assert_select "input#positie_name[name=?]", "positie[name]"

      assert_select "input#positie_location[name=?]", "positie[location]"
    end
  end
end
