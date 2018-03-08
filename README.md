# ROR-SetupGuide
Guide to setup ROR Application In Mac

# Step1 - 
  We need homebrew. Homebrew allows us to install and compile the packages easily from source.
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Step2-
 
 brew install rbenv ruby-build 

 Add rbenv to bash so that it loads every time you open a terminal 
 
 rbenv install 2.5.0
 rbenv global 2.5.0
 ruby -v

 Now You need to configure your git

 git config --global color.ui true
 git config --global user.name "YOUR NAME"
 git config --global user.email "YOUR@EMAIL.com"
 ssh-keygen -t rsa -C "YOUR@EMAIL.com"

# Step3-  

 Installing Rails-
 
 gem install rails -v 5.1.4

 Setting up Databases- 

 Rails ships with sqlite3 as the default database. Chances are you won't want to use it because it's stored as a simple file on disk. You'll probably want something more robust like MySQL or PostgreSQL.
 There is a lot of documentation on both, so you can just pick one that seems like you'll be more comfortable with. If you're coming from PHP, you may already be familiar with MySQL. If you're new to databases, I'd suggest skipping to setting up PostgreSQL.

 #### To install sqlite3 
   brew install sqlite3
 
 #### To install mysql 
   brew install mysql
   brew services start mysql # To start mysql server
 
 
 #### To have launchd start mysql at login:
   brew services start mysql
 
 
 #### To install postgresql
   brew install postgresql
   brew services start postgresql 
 
 #### Create You ROR App
   rails new myapp

#### If you want to use MySQL
rails new myapp -d mysql

#### If you want to use Postgres
  Note you will need to change config/database.yml's username to be
  the same as your OSX user account. (for example, mine is 'chris')
  
  rails new myapp -d postgresql

 #### Move into the application directory
   cd myapp

 #### If you setup MySQL or Postgres with a username/password, modify the
 #### config/database.yml file to contain the username/password that you specified

 #### Create the database
   rake db:create

 rails server
 You can now visit http://localhost:3000 to view your new website!
