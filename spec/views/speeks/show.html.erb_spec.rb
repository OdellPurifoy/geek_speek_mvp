require 'rails_helper'

RSpec.describe "speeks/show", type: :view do
  before(:each) do
    @speek = assign(:speek, Speek.create!(
      content: "MyText",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
