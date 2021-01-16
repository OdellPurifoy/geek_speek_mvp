require 'rails_helper'

RSpec.describe "speeks/edit", type: :view do
  before(:each) do
    @speek = assign(:speek, Speek.create!(
      content: "MyText",
      user: nil
    ))
  end

  it "renders the edit speek form" do
    render

    assert_select "form[action=?][method=?]", speek_path(@speek), "post" do

      assert_select "textarea[name=?]", "speek[content]"

      assert_select "input[name=?]", "speek[user_id]"
    end
  end
end
