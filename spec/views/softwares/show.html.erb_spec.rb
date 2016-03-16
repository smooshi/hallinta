require 'rails_helper'

RSpec.describe "softwares/show", type: :view do
  before(:each) do
    @software = assign(:software, Software.create!(
      :name => "Name",
      :addon => false,
      :BEL_price => 1,
      :price => 2,
      :identifier => "Identifier"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Identifier/)
  end
end
