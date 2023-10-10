namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando DB..."){%x(rails db:drop)}
      show_spinner("Criando DB..."){%x(rails db:create)}
      show_spinner("Migrando DB..."){%x(rails db:migrate)}
      %x(rails dev:add_coins)
    else
      puts "Rails não está em ambiente de desenvolvimento!"
    end
  end

  desc "Cadastra as moedas"
  task add_coins: :environment do 
    show_spinner("Cadastrando Moeadas...")do
      coins= [
      {
          description:"Bitcoin",
          acronym: "BTC",
          url_image: "https://upload.wikimedia.org/wikipedia/commons/5/50/Bitcoin.png"
      },
      {
          description:"Ethereum",
          acronym: "ETH",
          url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png/600px-ETHEREUM-YOUTUBE-PROFILE-PIC.png"
      }
      ]

coins.each do |coin|
    Coin.find_or_create_by!(coin)
    end
  end
end

  private

  def show_spinner(msg_start,msg_end = "concluido com sucesso")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end

