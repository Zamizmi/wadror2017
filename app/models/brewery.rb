class Brewery < ActiveRecord::Base
	has_many :beers

	def print_report
		puts name
		puts "established at year #{year}"
		puts "number of beers #{beer.count}"
	end

	def restart
		self.year = 2017
		puts "changed year to #{year}"
	end
	
end
