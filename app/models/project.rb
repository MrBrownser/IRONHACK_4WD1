class Project < ActiveRecord::Base
	has_many :entries
	validates :name, presence: true, uniqueness: true, length: { maximum: 30,
   too_long: "%{count} characters is the maximum allowed" }, format: { with: /\A[a-zA-Z0-9]+\z/,
   message: "only allows letters and numbers" }
	
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
		limit(n).order("created_at")
		# Project.limit(n).order("created_at")
	end

	def total_hours_in_month(month, year)
		m_first = Date.new(year, month, 1)
		m_last = Date.new(year, month, -1)

		month_entries = self.entries.where(date: m_first..m_last)

		if !entries.empty?
			t_hours = 0
			t_minutes = 0
			entries.each do |entry|
				t_hours += entry.hours
				t_minutes += entry.minutes
			end
			t_hours += t_minutes/60
		else
			0
		end
	end
end
