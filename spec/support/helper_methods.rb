# How to send raw post data (e.g. unparamaterized json) to one of my controllers for testing:
def raw_post(action, params={}, body={})
  @request.env['RAW_POST_DATA'] = body
  response = post action, params: params
  @request.env.delete('RAW_POST_DATA')
  response
end
