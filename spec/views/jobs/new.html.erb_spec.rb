require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      :title => "MyString",
      :location => "MyString",
      :blurb => "MyString",
      :pay => "MyString",
      :time => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "input#job_location[name=?]", "job[location]"

      assert_select "input#job_blurb[name=?]", "job[blurb]"

      assert_select "input#job_pay[name=?]", "job[pay]"

      assert_select "input#job_time[name=?]", "job[time]"

      assert_select "input#job_description[name=?]", "job[description]"
    end
  end
end
