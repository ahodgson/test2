require 'spec_helper'

describe "checkins/edit" do
  before(:each) do
    @checkin = assign(:checkin, stub_model(Checkin,
      :event_id => 1,
      :user_id => 1,
      :latitude => 1.5,
      :longitude => 1.5,
      :accuracy => 1.5
    ))
  end

  it "renders the edit checkin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", checkin_path(@checkin), "post" do
      assert_select "input#checkin_event_id[name=?]", "checkin[event_id]"
      assert_select "input#checkin_user_id[name=?]", "checkin[user_id]"
      assert_select "input#checkin_latitude[name=?]", "checkin[latitude]"
      assert_select "input#checkin_longitude[name=?]", "checkin[longitude]"
      assert_select "input#checkin_accuracy[name=?]", "checkin[accuracy]"
    end
  end
end
