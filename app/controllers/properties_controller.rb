class PropertiesController < ApplicationController
  def index
    @properties = Homeflow::API::Property.where(postcoe: "LL13", with_photos: true).results.properties
  end

  def search
    @q = params[:q]
    @max_bedrooms = params[:max_bedrooms]
    @postcode = params[:postcode]
    @properties = Homeflow::API::Property.where(
      q: @q, 
      max_bedrooms: @max_bedrooms, 
      postcode: @postcode, 
      with_photos: true).results.properties

  end
end
