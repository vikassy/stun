require 'rails/generators/migration'

class TongueStunGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  desc "This genrator adds TongueStun related documents"

  namespace "tonguestun"

  def copy_database_yml_file
    template "database.yml", "config/root_db.yml"
  end

  def self.source_root
    File.expand_path("../templates", __FILE__)
  end

  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def copy_migration_file
    migration_template 'engagement_migration.rb', 'db/migrate/engagement_migration.rb'
  end
end
