# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Activity.create([{label:'睡眠'}, {label: '仕事'}, {label: 'ランチ'}])
CurrentActivity.create([{activity: nil, started_at: DateTime.now}])
