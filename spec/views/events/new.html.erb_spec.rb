require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :name => "MyString",
      :user_id => 1,
      :latitude => 1.5,
      :longitude => 1.5
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "input#event_name[name=?]", "event[name]"
      assert_select "input#event_user_id[name=?]", "event[user_id]"
      assert_select "input#event_latitude[name=?]", "event[latitude]"
      assert_select "input#event_longitude[name=?]", "event[longitude]"
    end
  end
end
