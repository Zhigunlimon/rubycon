class EmailsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def contact_us
    ContactMailer.contact_request(params).deliver
  end
end
