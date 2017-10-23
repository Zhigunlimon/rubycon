require 'rails_helper'

RSpec.describe "contents/show", type: :view do
  before(:each) do
    @content = assign(:content, Content.create!(
      :title => "Title",
      :body => "Body",
      :page => "Page",
      :description => "Description",
      :image => "Image",
      :content_type => "Content Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Body/)
    expect(rendered).to match(/Page/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Content Type/)
  end
end
