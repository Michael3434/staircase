
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

    4.times do
post = Post.new(
  title: "AG du 18",
  post_type: "Administration immeuble",
  content: "Bonjour, nous ferons une AG le 18 pour blablabla",
  user_id: 5
)
post.save
end


