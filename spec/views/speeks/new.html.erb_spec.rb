require 'rails_helper'

RSpec.describe "speeks/new", type: :view do
  before(:each) do
    assign(:speek, Speek.new(
      content: "MyText",
      user: nil
    ))
  end

  it "renders new speek form" do
    render

    assert_select "form[action=?][method=?]", speeks_path, "post" do

      assert_select "textarea[name=?]", "speek[content]"

      assert_select "input[name=?]", "speek[user_id]"
    end
  end
end
