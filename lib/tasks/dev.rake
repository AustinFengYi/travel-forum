namespace :dev do
  task fake_resort: :environment do
    Travelresort.destroy_all

    500.times do |i|
      Travelresort.create!(name: FFaker::Name.first_name,
        opening_hours: FFaker::Time.datetime,
        tel: FFaker::PhoneNumber.short_phone_number,
        address: FFaker::Address.street_address,
        description: FFaker::Lorem.paragraph,
        image: File.open("#{Rails.root}/public/img/#{rand(1..10)}.jpg"),

      )
    end
    puts "have created fake Travelresorts"
    puts "now you have #{Travelresort.count} resorts data"
  end
end