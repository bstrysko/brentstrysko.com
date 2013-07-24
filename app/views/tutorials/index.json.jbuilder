json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, 
  json.url tutorial_url(tutorial, format: :json)
end
