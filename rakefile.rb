task :default => :mac_and_cheese

desc "Make Mac & Cheese"
task :mac_and_cheese => [:boil_water, :buy_pasta, :buy_cheese] do
	puts "Making Mac & Cheese"
end

task :go_to_store do
	puts "Going to the Store"
end

namespace :apple do
	task :go_to_store do
		puts "Going to the Apple Store"
	end
end

desc "Buy some delicious cheese"
task :buy_cheese do
	puts "Buying Cheese"
end

desc "Buy some quality pasta"
task :buy_pasta do
	puts "Buying Pasta"
end

desc "Boil the water"
task :boil_water => [:buy_pasta, :buy_cheese] do
	puts "Boiling Water"
end
