class View

  def create_gossip
      puts "Quel est ton nom ?"
      print ">"
      author = gets.chomp.to_s
      puts "Créer ton ragot"
      print ">"
      content = gets.chomp.to_s
      return params = { content: content, author: author }
  end

  def index_gossips(gossips)
      gossips.each do |gossip|
      puts "#{gossip.author} a dit : #{gossip.content}"
      end
  end

  def destroy_gossip(gossips)
    index_gossip(gossips)
    
    if (@index<1) then clear_screen(); print "Vous ne pouvez rien supprimer !\n"; return 0 end

    print "Quel potin désirez-vous détruire à tout jamais ? "
    while(choice = gets.chomp.to_i)
      break if (choice>0 && choice <@index+1)
      print "Cette référence n'existe pas ! Choisissez une réference existante ci-dessus : "
    end

    clear_screen()

    puts "Le potin de #{gossips.keys[choice-1]} a été supprimé !" ; puts ""
    return choice

  end

end