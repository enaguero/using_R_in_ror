desc "Runs an external ruby script"
task :classify_flower => :environment do
  filepath = Rails.root.join('lib', 'external_scripts', 'script.R')

  greetings = [
    'ARRRGH ME MATEYS',
    'Why hello, old chap!',
    'Hollaaaa!',
    'Hello, is it me you\'re looking for?',
    'Avast! Ye ARRRE so smart.',
    'Shiver me timbers this is a gRRReat tutorial!'
  ]

  output = `Rscript --vanilla #{filepath} #{greetings}`
  puts "Here's the output:\n #{output}"
end
