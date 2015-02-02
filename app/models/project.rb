class Project < ActiveRecord::Base
	def self.iron_find(where_clause)
		return Project.where(where_clause)
	end
end
