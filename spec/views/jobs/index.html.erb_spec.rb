require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :title => "Title",
        :location => "Location",
        :blurb => "Blurb",
        :pay => "Pay",
        :time => "Time",
        :description => "Description"
      ),
      Job.create!(
        :title => "Title",
        :location => "Location",
        :blurb => "Blurb",
        :pay => "Pay",
        :time => "Time",
        :description => "Description"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Blurb".to_s, :count => 2
    assert_select "tr>td", :text => "Pay".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
