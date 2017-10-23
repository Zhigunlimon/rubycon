module ContentsHelper

  def show_content(page, title, data = {})
    content = Content.find_by(title: title, page: page)
    return '' if content.blank? || (content.body.blank? && content.image.blank?)
    if content.content_type == 'text'
      content_tag :div, class: 'content-container' do
        concat link_to 'Edit', edit_admin_content_path(content), class: 'edit-btn' if user_signed_in? && current_user.admin?
        if data.present?
          concat content.body.html_safe % data
        else
          concat content.body.html_safe
        end
      end
    else
      content.image
    end
  end

end
