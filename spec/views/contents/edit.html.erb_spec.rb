require 'rails_helper'

RSpec.describe "contents/edit", type: :view do
  before(:each) do
    @content = assign(:content, Content.create!(
      :title => "MyString",
      :body => "MyString",
      :page => "MyString",
      :description => "MyString",
      :image => "MyString",
      :content_type => "MyString"
    ))
  end

  it "renders the edit content form" do
    render

    assert_select "form[action=?][method=?]", content_path(@content), "post" do

      assert_select "input[name=?]", "content[title]"

      assert_select "input[name=?]", "content[body]"

      assert_select "input[name=?]", "content[page]"

      assert_select "input[name=?]", "content[description]"

      assert_select "input[name=?]", "content[image]"

      assert_select "input[name=?]", "content[content_type]"
    end
  end
end
