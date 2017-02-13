require 'rails_helper'

RSpec.describe "ip_values/new", type: :view do
  before(:each) do
    assign(:ip_value, IpValue.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new ip_value form" do
    render

    assert_select "form[action=?][method=?]", ip_values_path, "post" do

      assert_select "input#ip_value_name[name=?]", "ip_value[name]"

      assert_select "input#ip_value_description[name=?]", "ip_value[description]"
    end
  end
end
