desc "Runs an external R script"
task :classify_new_flower => :environment do
  filepath = Rails.root.join('lib', 'r_scripts', 'iris_prediction_testing_pg_script.R')
  output = `Rscript --vanilla #{filepath}`
  Flower.where(state:'new').each{ |flower| flower.predict}
end
