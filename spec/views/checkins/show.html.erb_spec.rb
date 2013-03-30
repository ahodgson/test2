require 'spec_helper'

describe "checkins/show" do
  before(:each) do
    @checkin = assign(:checkin, stub_model(Checkin,
      :event_id => 1,
      :user_id => 2,
      :latitude => 1.5,
      :longitude => 1.5,
      :accuracy => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
