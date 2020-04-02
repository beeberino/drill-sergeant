FactoryBot.define do
  factory :workout do
    name { Faker::Games::Zelda.character }
    plan { 
      Faker::Json.shallow_json(width: 3, options: { key: 'App.name', value: 'Movies::Lebowski.quote' })
    }
  end
end