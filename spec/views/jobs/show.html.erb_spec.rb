require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :title => "Title",
      :location => "Location",
      :blurb => "Blurb",
      :pay => "Pay",
      :time => "Time",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Blurb/)
    expect(rendered).to match(/Pay/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/Description/)
  end
end
