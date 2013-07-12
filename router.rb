get '/hi' do
  "Hello World! #{Pairing.where(:leader_id => 1).first.date}"
end
