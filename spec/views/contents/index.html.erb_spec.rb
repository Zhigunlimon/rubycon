require 'rails_helper'

RSpec.describe "contents/index", type: :view do
  before(:each) do
    assign(:contents, [
      Content.create!(
        :title => "Title",
        :body => "Body",
        :page => "Page",
        :description => "Description",
        :image => "Image",
        :content_type => "Content Type"
      ),
      Content.create!(
        :title => "Title",
        :body => "Body",
        :page => "Page",
        :description => "Description",
        :image => "Image",
        :content_type => "Content Type"
      )
    ])
  end

  it "renders a list of contents" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
    assert_select "tr>td", :text => "Page".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Content Type".to_s, :count => 2
  end
end
