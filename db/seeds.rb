
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

building1 = Building.new(
  address: "12 rue jean richepin, Paris",
  number_floor: 11,
  building_password: "paris",
  guardian_id: 1,
  syndic_id: 1,
  name: "12 rue Jean Richepin, Paris"
  )

building1.save

building2 = Building.new(
  address: "221 chaussée d'alsemberg, Bruxelles ",
  number_floor: 9,
  building_password: "bruxelles",
  guardian_id: 2,
  syndic_id: 2,
  name: "221 Chaussée d'Alsemberg, Bruxelles"
  )

building2.save

User.new(
        first_name: "Annabelle",
        last_name:  "Mathias",
        email:     "annabellemathias",
        password:  "qwertyuiop",
        phone_number:     "0404040404",
        show_phone: false,
        is_owner: false,
        is_syndic: true,
        is_renter: false,
        is_pm: true
        )


