class Activity < ActiveRecord::Base
include Image

	has_many :items , :dependent=>:destroy
	validates_presence_of  :subject

	before_create :set_album

	# will_pagigante params
	self.per_page = 5

	def album_image_path
		file_name(album,album_seq)
	end	


	private

	def set_album
		if self.album.blank?
			set_random_seed
			r=rand(1..2)
			self.album = (r==1)?("boy"):("girl")
		end	
		count = total_count(album)
		self.album_seq = get_random_number(album)  
	end	

	# type = boy / girl
	def get_random_number(gender)
		count = total_count(gender)
		set_random_seed
		return rand(1..count)
	end

	def set_random_seed
		srand (Time.now.to_f*10000000).to_i
	end	
end
