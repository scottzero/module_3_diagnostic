class PotterApiService

  def house_info
  response = get_access.get
  body = JSON.parse(response.body, symbolize_names: true)
  house_id = body[0][:_id]

  use_me = get_member(house_id)

  response_2 = use_me.get
  parse_response_2 = JSON.parse(response_2.body)
  house = parse_response_2[0]["name"]
  members = parse_response_2[0]["members"].map do |member|
    member["name"]
  end
  # binding.pry
  end

  def member_count
    house_info.count
  end

  private

  def get_access
    Faraday.new(:url => "https://www.potterapi.com/v1/houses" ) do |faraday|
     faraday.params['format'] = 'json'
     faraday.params['key'] = ENV['POTTER_API_KEY']
     faraday.adapter Faraday.default_adapter
   end
 end

 def get_member(id)
     Faraday.new(:url => "https://www.potterapi.com/v1/houses/#{id}" ) do |faraday|
      faraday.params['format'] = 'json'
      faraday.params['key'] = ENV['POTTER_API_KEY']
      faraday.adapter Faraday.default_adapter
  end
end
end
