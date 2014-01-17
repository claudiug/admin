namespace :bundler do
  task :setup do
    require 'rubygems'
    require 'bundler/setup'
  end
end

task :environment, [:env] => 'bundler:setup' do |cmd, args|
  ENV["RACK_ENV"] ||= "development"
  require "./app"
end

namespace :db do
  task :migrate
  task :setup

  task :reindex => :environment do
    Product.reindex
    OfflineStore.reindex
  end

  namespace :mongoid do
    desc "Create indexes"
    task :create_indexes => :environment do
      to_index_models = []
      ObjectSpace.each_object(Module) do |object|
        begin
          to_index_models.push(object) if object.respond_to?(:create_indexes)
        rescue Object => e
          warn "failed on: #{ object }.respond_to?(:create_indexes)"
        end
      end

      to_index_models.sort! do |a, b|
        begin
          a.name <=> b.name
        rescue Object
          0
        end
      end

      begin
        to_index_models.uniq!
      rescue Object
      end

      to_index_models.each do |model|
        begin
          model.create_indexes
          puts "indexed: #{ model }"
        rescue Object => e
          warn "failed on: #{ model }#create_indexes"
        end
      end
    end
  end
end

namespace :cron do
  desc "Auto expire order item"
  task :auto_expire do
    require './app'
    ItemExpire.expire!
  end
end

require 'tasks/state_machine'
