
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

10.times do
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

frederic = User.new(
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
   frederic.save

   gardienne = User.new(
        first_name: "Annabelle",
        last_name:  "Mathias",
        email:     "gardienne@gmail.com",
        password:  "qwertyuiop",
        phone_number:     "0404040404",
        show_phone: false,
        is_owner: false,
        is_syndic: true,
        is_renter: false,
        is_pm: true
        )

gardienne.save
puts "Gardinne create - email"
puts "Email = gardienne@gmail.com"
puts "Password = qwertyuiop"


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



post1 = Post.new(
  title: "Désinsectisation générale",
  post_type: "Travaux / Entretien",
  content: "A la demande du Cabinet G.T.F, la société Christal doit procéder à la désinctisation des parties communes de l'ensemble des parties privatives de votre immeuble, à savoir : appartements, chambres de bonnes , studios et locaux commerciaux. Afin d'assurer une efficacité optimale lors de cette intervention, TOUS les locaux, privatifs et communs, doivent être impérativement être traités par nos soins.
Aussi, le jour de notre passage, il est demandé de permettre l'accès de votre appartement aux agents de la société Christal, soit par votre présence, soit en confiant vos clefs au gardien ou à une personne de l'immeuble (voisin, responsable syndical).

Le traitement en parties privatives concerne en priorité les cuisines, salles de bains, salles d'eau, WC, celliers, gaines techniques et toutes zones infestées.

Nous vous remercions à l'avance de votre collaboration.",
  user_id: User.all.sample.id,
  date: "2015-12-21 11:00:00",
  created_at: "2015-12-13 14:42:28",
  id_building: 1,
)
post1.save


post2 = Post.new(
  title: "Intervention plomberie - Coupure d'eau",
  post_type: "Travaux / Entretien",
  content: "Avis aux voisins :
  Nous informons que la société Plomberie 16e S.A interviendra dans l'immeuble mardi 22 décembre. Une coupure d'eau générale est donc à prévoir de 8h00 à 12h00 le même jour afin de permettre à l'intervention de se réaliser dans les meilleurs délais.
  Nous nous excusions pour la gêne occasionnée.",
  user_id: User.all.sample.id,
  date: "2015-12-22 08:00:00",
  created_at: "2015-12-14 14:42:28",
  id_building: 1,
)
post2.save

post3 = Post.new(
  title: "Dîner - Anniversaire de 40 ans",
  post_type: "Vie de l'immeuble",
  content: "A l'occasion de l'anniversaire des 40 ans de mon mari, j'organise un dîner avec une trentaine de personnes vendredi soir. Je vous prie de nous excuser pour la gêne occasionnée. Si certains d'entre-vous veulent venir, vous êtes les bienvenus. Les festivités commenceront à 19h00.
  Merci d'avance pour votre compréhension.",
  user_id: User.all.sample.id,
  date: "2015-12-18 19:00:00",
  created_at: "2015-10-15 23:42:28",
  id_building: 1,
)
post3.save

post4 = Post.new(
  title: "Collecte solidaire d'habits - Emmaüs",
  post_type: "Services entre voisins",
  content: "Cher voisins,
  Comme vous le savez, depuis 3 ans, je me suis engagé comme responsable de quartier pour le collecte solidaire d'habits au profit de l'association Emmaüs. Ce samedi matin 19 décembre entre 11h00 et 17h00, j'organise une collecte générale pour la résidence. Elle aura lieu dans le hall de l'immeuble, à proximité du sapin de Noël.
  Merci d'avance pour votre générosité ! ",
  user_id: User.all.sample.id,
  date: "2015-12-19 11:00:00",
  created_at: "2015-12-12 17:42:28",
  id_building: 1,
)
post4.save

post5 = Post.new(
  title: "Recherche d'une jeune fille au pair",
  post_type: "Emploi",
  content: "Nous recherchons une baby-sitter pour notre petite fille de 4 ans, à compter de lundi prochain et pour tous les lundis soirs de l'année 2016. Si vous êtes intéressé(e) / ou connaissez quelqu'un, nous vous prions de nous joindre au +33 6 56 43 45 34.
   A très bientôt j'espère.  ",
  user_id: User.all.sample.id,
  date: "2015-12-21 18:00:00",
  created_at: "2015-12-16 16:42:28",
  id_building: 1,
)
post5.save

post6 = Post.new(
  title: "Prêt de chaise pour un déjeuner dimanche",
  post_type: "Services entre voisins",
  content: "Bonjour les Voisins,
  J'organise un évènement de famille ce dimanche 20 décembre. Je recherche 4 chaises pour accueillir mes hôtes. Quelqu'un aurait-il la gentillesse de me prêter ces chaises ?
  Je vous remercie d'avance pour cet aide.
  Je vous le revaudrai.  ",
  user_id: User.all.sample.id,
  date: "2015-12-20 12:30:00",
  created_at: "2015-12-17 16:42:28",
  id_building: 1,
)
post6.save

post7 = Post.new(
    title: "Fete des voisins ! ",
    post_type: "Vie de l'immeuble",
    content: "Voisins, voisines ! Vous êtes toutes et tous convié(e)s à notre fête des voisins. Nous nous retrouverons comme chaque année au bord de l'étang. Thème de la fête: BUNGA BUNGA !",
    user_id: User.all.sample.id,
    date: "2015-12-22 19:00:00",
    created_at: "2015-12-15 15:42:28",
    id_building: 2,
   )
   post7.save

   post8 = Post.new(
    title: "Organisation de l'Assemblée Générale",
    post_type: "Vie administrative",
    content: "Madame, Monsieur,
    Conformément à la loi sur les copropriétés, nous portons à votre connaissance que l'Assemblée générale Ordinaire de l'Association des Copropriétaires de votre immeuble est fixée au lundi 21 décembre.",
    user_id: User.all.sample.id,
    date: "2015-12-21 14:00:00",
    created_at: "2015-12-06 14:00:28",
    id_building: 2,
   )
   post8.save

   post9 = Post.new(
    title: "Entretien ventilation",
    post_type: "Travaux / Entretien",
    content: "Nous vous informons que le nettoyage des bouches et grilles de ventilation est programmé par la firme Zendher les 9 et 10 février 2016, entre 8h et 16h30",
    user_id: User.all.sample.id,
    date: "2016-01-22 08:00:00",
    created_at: "2015-12-18 14:52:28",
    id_building: 2,
   )
   post9.save


   post10 = Post.new(
    title: "Création d'une Book Box",
    post_type: "Services entre voisins",
    content: "Bonjour à tous ! Je vous propose la création d'une boite de partage de livres entre voisins. Une minibibliothèque sera placée dans le hall pour que nous puissions échanger nos passionnants ouvrages ! Bien à vous",
    user_id: User.all.sample.id,
    date: "2015-12-18 19:00:00",
    created_at: "2015-12-13 14:42:28",
    id_building: 2,
   )
   post10.save
