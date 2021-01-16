require 'rails_helper'

RSpec.describe "speeks/index", type: :view do
  before(:each) do
    assign(:speeks, [
      Speek.create!(
        content: "MyText",
        user: nil
      ),
      Speek.create!(
        content: "MyText",
        user: nil
      )
    ])
  end

  it "renders a list of speeks" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
