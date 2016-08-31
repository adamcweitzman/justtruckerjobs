require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :title => "MyString",
      :location => "MyString",
      :blurb => "MyString",
      :pay => "MyString",
      :time => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "input#job_location[name=?]", "job[location]"

      assert_select "input#job_blurb[name=?]", "job[blurb]"

      assert_select "input#job_pay[name=?]", "job[pay]"

      assert_select "input#job_time[name=?]", "job[time]"

      assert_select "input#job_description[name=?]", "job[description]"
    end
  end
end
