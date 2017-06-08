if @url
  json.data @url.as_json({include: :user})
else
  json.data "Error"
end
