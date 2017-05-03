require 'rails_helper'

RSpec.describe "assignments/index", type: :view do
  before(:each) do
    assign(:assignments, [
      Assignment.create!(
        :title => "Title",
        :statement => "MyText",
        :course => nil
      ),
      Assignment.create!(
        :title => "Title",
        :statement => "MyText",
        :course => nil
      )
    ])
  end

  it "renders a list of assignments" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
