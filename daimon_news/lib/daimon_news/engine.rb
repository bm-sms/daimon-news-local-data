module DaimonNews
  class Engine < ::Rails::Engine
    isolate_namespace DaimonNews

    config.before_initialize do
      ActiveRecord::Tasks::DatabaseTasks.migrations_paths += DaimonNews::Engine.paths['db/migrate'].to_a
    end
  end
end
