class PotterApiService
  def initialize(house)
    @house = house
  end

  def get_members
    json_response = conn.get("/houses/#{@house.id}.json")
    parsed_data = JSON.parse(json_response.body, symbolize_names: true)
    parsed_data[:members]
    binding.pry
  end

  def conn
    Faraday.new(
      url: 'https://www.potterapi.com/v1/',
      headers: {'key' => ENV["POTTER_API_KEY"]}
    )
  end
end
