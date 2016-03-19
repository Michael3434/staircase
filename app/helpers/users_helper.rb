module UsersHelper
  def users_group
    destinataires_group = ["Tout l'immeuble", "Etage 1", "Etage 2","Etage 3", "Etage 4", "Chambres de bonne"]
    destinataires_group.each do |group|
      [group, group]
    end
  end
end
