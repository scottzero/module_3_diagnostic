class SearchController < ApplicationController

  def index
    @members = search_members(params[:house])
    # binding.pry
  end

  def search_members(house)
    potter_api_service = PotterApiService.new(house)
    member_data = potter_api_service.get_members
  end
