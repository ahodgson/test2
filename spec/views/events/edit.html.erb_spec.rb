require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "MyString",
      :user_id => 1,
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_path(@event), "post" do
      assert_select "input#event_name[name=?]", "event[name]"
      assert_select "input#event_user_id[name=?]", "event[user_id]"
      assert_select "input#event_latitude[name=?]", "event[latitude]"
      assert_select "input#event_longitude[name=?]", "event[longitude]"
    end
  end
end
