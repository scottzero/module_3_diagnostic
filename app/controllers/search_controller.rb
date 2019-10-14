class SearchController < ApplicationController

  def index
    potters  = PotterApiService.new
    @members = potters.house_info
    # binding.pry
  end

  def search_members
    potter_api_service = PotterApiService.new
    member_data = potter_api_service.house_info
  end
end
