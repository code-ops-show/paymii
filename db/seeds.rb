# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


configurable = YAML::load(File.open(File.join(Rails.root, 'config', 'configurables.yml')))

configurable[:settings].each do |k, v|
  Configurable.create(name: k, settings: v.map { |v| { v => "" }}.inject { |sum, n| sum.merge(n) })
end
