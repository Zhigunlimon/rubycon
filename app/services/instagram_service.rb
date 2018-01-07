class InstagramService
  require 'net/http'
  
  def initialize(*args)
    @access_token = ENV['INSTAGRAM_ACCESS_TOKEN']
  end

  def fetch
    Rails.cache.fetch('instagram', expires_in: 1.hour) do
      uri = URI.parse("https://api.instagram.com/v1/users/self/media/recent/?access_token=#{@access_token}")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      request = Net::HTTP::Get.new(uri.request_uri, initheader = {'Content-Type' =>'application/json'})
      result = http.request(request)
      json = JSON.parse(result.body)
      images = json['data'].map{|d| d['images']['low_resolution']['link'] = d['link']; d['images']['low_resolution'] } rescue []
    end
  end
end
