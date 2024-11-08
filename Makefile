test:
	@ bundle exec rspec

install: clear
	@ gem build
	@ gem install --local mashina
	@ make clear

uninstall:
	@ yes | gem uninstall mashina

clear:
	@ rm -rf ./*.gem
