require 'rails_helper'

RSpec.describe "grades/index", type: :view do
  before(:each) do
    assign(:grades, [
      Grade.create!(
        :value => 2.5,
        :person => nil,
        :assignment => nil
      ),
      Grade.create!(
        :value => 2.5,
        :person => nil,
        :assignment => nil
      )
    ])
  end

  it "renders a list of grades" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
