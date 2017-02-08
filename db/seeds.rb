# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Dir.glob('app/assets/images/works/*') do |photo|
	work = Work.new({
		:title => Faker::Name.name,
		:desc => Faker::Lorem.paragraph(3),
		:img => File.open(photo),
		:github_url => Faker::Internet.url,
		:demo_url => Faker::Internet.url
	})

	if work.save
		puts "Created Work Number #{work.id}"
	else
		puts "ERROR:::=>> #{work.errors.full_messages}"
	end

end

