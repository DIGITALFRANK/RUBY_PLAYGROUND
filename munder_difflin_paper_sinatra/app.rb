
#   SAMPLE rbenv INSTALLATION

# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# brew install rbenv ruby-build
# echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
# source ~/.bash_profile
# rbenv install 2.3.0
# rbenv global 2.3.0


require 'sinatra'


get '/' do
    erb :index
end