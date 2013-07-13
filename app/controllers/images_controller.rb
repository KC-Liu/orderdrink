class ImagesController < ApplicationController
	
  def index

  	boy_count = Image.total_count("boy")
  	@boys  = (1..boy_count).map{|i| Image.file_name("boy",i) }

  	girl_count = Image.total_count("girl")
  	@girls = (1..girl_count).map{|i| Image.file_name("girl",i) }

  end
  	
end
