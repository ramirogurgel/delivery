class Location 
  geocoded_by :address
  after_validation :geocode
  def user_params
      params.require(:location).permit(:address, :latitude, :longitude)
    end
end