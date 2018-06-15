module ApplicationHelper
  def instagram_feed
    images = InstagramService.new.fetch.first(7)
    images.map.with_index do |i, index|
      content_tag(:div, '', class: "instagram_photo _#{index}", style: "background-image: url(#{i['url']})")
    end.join.html_safe
  end


  def instagram_feed_mobile
    images = InstagramService.new.fetch.first(1)
    images.map.with_index do |i, index|
      content_tag(:div, '', class: "instagram_photo _#{index} col-xs-12", style: "background-image: url(#{i['url']})")
    end.join.html_safe
  end

end
