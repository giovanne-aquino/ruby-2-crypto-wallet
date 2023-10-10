namespace :dev do
  desc "Configura o ambiente de desenvolvimento "
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Executando...", format: :bouncing)
      spinner.auto_spin
      puts %x(rails db:drop db:create db:migrate db:seed)
      spinner.success('("Concluido!")')
    else
      puts "sai dai doido"
    end
   
  end
end
