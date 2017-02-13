require 'rails_helper'

RSpec.describe "ip_values/edit", type: :view do
  before(:each) do
    @ip_value = assign(:ip_value, IpValue.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit ip_value form" do
    render

    assert_select "form[action=?][method=?]", ip_value_path(@ip_value), "post" do

      assert_select "input#ip_value_name[name=?]", "ip_value[name]"

      assert_select "input#ip_value_description[name=?]", "ip_value[description]"
    end
  end
end
