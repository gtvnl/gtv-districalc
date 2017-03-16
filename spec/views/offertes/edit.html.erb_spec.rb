require 'rails_helper'

RSpec.describe "offertes/edit", type: :view do
  before(:each) do
    @offerte = assign(:offerte, Offerte.create!(
      :number => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit offerte form" do
    render

    assert_select "form[action=?][method=?]", offerte_path(@offerte), "post" do

      assert_select "input#offerte_number[name=?]", "offerte[number]"

      assert_select "input#offerte_description[name=?]", "offerte[description]"
    end
  end
end
