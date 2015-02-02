class Project < ActiveRecord::Base
	def self.iron_find(where_clause)
		where(where_clause)
	end

	def self.clean_old
		from = Time.now.midnight - 1.days
		to = Time.now.midnight
		where(updated_at: from..to).each do |project|
			project.destroy
		end
	end

	def self.last_created_projects(n)
		# limit(n).order("created_at") --> MORE PRO! CHECK THIS AFTER!!
		Project.limit(n).order("created_at")
	end
end
