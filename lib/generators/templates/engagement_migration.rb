class EngagementMigration < ActiveRecord::Migration
	def change
		create_table :engagements do |t|
			t.string :name
		end
	end
end

