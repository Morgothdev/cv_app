namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    99.times do |n|
      nam = Faker::Lorem.words(2)
      name = "project-#{nam}"
      dsc = Faker::Lorem.sentence(10)
      whe = "#{n+1}"
      Portfolio.create!(project_name: name,
                   description: dsc,
                   whens: whe)
    end



    portfolios = Portfolio.all()
    3.times do
      portfolios.each { |portf| portf.functions.create!(description: Faker::Lorem.sentence(20)) }
    end
  end
end