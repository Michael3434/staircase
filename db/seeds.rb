
User.destroy_all


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

    Gardienne = User.new(
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

    Frederic = User.new(
            first_name: "Frederic",
            last_name:  "Nicolay",
            email:     "fredo@jmail.com",
            password:  "azerty123",
            phone_number:     "0505050505",
            show_phone: false,
            is_owner: true,
            is_syndic: false,
            is_renter: false,
            is_pm: false
      )

post7 = Post.new(
 title: "Fete des voisins ! ",
 post_type: "Vie de l'immeuble",
 content: "Voisins, voisines ! Vous etes toutes et tous convié(e)s à notre fete des voisins. Nous nous retrouverons comme chaque année au bord de l'étang. Thème de la fête: BUNGA BUNGA !"
 user_id: User.all.sample.id,
 date: "2015--22 00:00:00",
 created_at: "2015-12-15 14:42:28",
 id_building: 2,
)
post7.save

post8 = Post.new(
 title: "Organisation de l'Assemblée Générale",
 post_type: "Vie administrative",
 content: "Madame, Monsieur,
 Conformément à la loi sur les copropriétés, nous portons à votre connaissance que l'Assemblée générale Ordinaire de l'Association des Copropriétaires de votre immeuble est fixée au jeudi 17 décembre",
 user_id: User.all.sample.id,
 date: "2016-01-17 00:00:00",
 created_at: "2015-12-15 14:42:28",
 id_building: 2,
)
post8.save


post9 = Post.new(
 title: "Entretien ventilation",
 post_type: "Travaux / Entretien",
 content: "Nous vous informons que le nettoyage des bouches et grilles de ventilation est programmé par la firme Zendher les 9 et 10 février 2016, entre 8h et 16h30",
 user_id: User.all.sample.id,
 date: "2016-01-22 08:00:00",
 created_at: "2015-12-15 14:42:28",
 id_building: 2,
)
post9.save


post10 = Post.new(
 title: "Création d'une Book Box",
 post_type: "Services entre voisins",
 content: "Bonjour à tous ! Je vous propose la création d'une boite de partage de livres entre voisins. Une minibibliothèque sera placée dans le hall pour que nous puissions échanger nos passionnants ouvrages ! Bien à vous",
 user_id: User.all.sample.id,
 date: "2015-12-16 00:00:00",
 created_at: "2015-12-15 14:42:28",
 id_building: 2,
)
post10.save




→ Organisation d'une fête des Voisins
→ Organisation de l'AG
→ Nettoyage Garage
→ Entretien Ventilation
→ Proposition d'échange de livres
→ Annonce d'arrivée dans l'immeuble (pas une seed)
→ Organisation d'une pendaison de crémaillère (pas une seed)





