require 'spec_helper'

describe "checkins/index" do
  before(:each) do
    assign(:checkins, [
      stub_model(Checkin,
        :event_id => 1,
        :user_id => 2,
        :latitude => 1.5,
        :longitude => 1.5,
        :accuracy => 1.5
      ),
      stub_model(Checkin,
        :event_id => 1,
        :user_id => 2,
        :latitude => 1.5,
        :longitude => 1.5,
        :accuracy => 1.5
      )
    ])
  end

  it "renders a list of checkins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
