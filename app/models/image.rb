module Image
extend self

	FILE_TYPE = "jpg"

	def total_count(gender)
		Dir.glob(File.join('app', 'assets', 'images', gender , "*.#{FILE_TYPE}" )).size
	end	

	def file_name(gender,seq)
		"#{gender}/#{seq.to_s}.#{FILE_TYPE}"
	end	
end