
User.destroy_all

5.times do
      user = User.new(
        first_name: Faker::Name.first_name,
        last_name:  Faker::Name.last_name,
        email:     Faker::Internet.email,
        password:  "password",
        phone_number:     Faker::PhoneNumber.phone_number,
        show_phone: false,
        is_owner: true,
        is_syndic: false,
        is_renter: false,
        is_pm: false
        )

      user.save
      p "#{user} Created"
    end

5.times do
      user = User.new(
        first_name: Faker::Name.first_name,
        last_name:  Faker::Name.last_name,
        email:     Faker::Internet.email,
        password:  "password",
        phone_number:     Faker::PhoneNumber.phone_number,
        show_phone: false,
        is_owner: false,
        is_syndic: false,
        is_renter: true,
        is_pm: false
        )

      user.save
       p "#{user} Created"
    end

    1.times do
      user = User.new(
        first_name: Faker::Name.first_name,
        last_name:  Faker::Name.last_name,
        email:     Faker::Internet.email,
        password:  "password",
        phone_number:     Faker::PhoneNumber.phone_number,
        show_phone: false,
        is_owner: false,
        is_syndic: true,
        is_renter: false,
        is_pm: false
        )

      user.save
       p "#{user} Created"
    end
