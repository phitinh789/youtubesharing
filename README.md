# Youtube Sharing App
## Introduction
This app designed to make sharing YouTube video links to everyone quick and hassle-free.
Whenever you discover an fatastic movie, a hilarious comedy, or a beautiful music video, this app provides a space for sharing it to the world and help people to discovering the best of the best Youtube videos.

**Key Features:**
* **Effortless Link Sharing:** The app simplifies the process of sharing YouTube video links. Just copy the URL of the video you want to share, paste it in the app, and you're ready to go.
* **Real-Time Notifications:** Get instant updates on new video shares from all users.
* **Vote on videos:** Show your appreciation by voting on videos: Like, dislike,...

## Requirements
* **Ruby:** Version 2.5.3
* **Rails:** Version 5.2.5
* **Database:** Use MySql at local, PostgreSQL in production
* **Bundler:** Bundler is a Ruby gem manager used to install project-specific gems. You can install it using gem `install bundler`
* **Node.js:** Version 14.5.5
* **Git:** You need Git installed, check using `git --version`.
* **A Web Browser:** To view and interact with the app, you need a web browser like Google Chrome, Mozilla Firefox, or Safari.
* **A Text Editor:** You need one to work on the app's code. Free to use any type of text editor which you goot at.

## Installation & Configuration
Follow these steps to set up the YouTube Sharing App on your local development environment.
**1. Clone the Repository**
```
git clone https://github.com/phitinh789/youtubesharing.git
```
**2. Install Ruby Dependencies**
```
bundle install
```
**3. Configure the Database**
```
cp config/database.yml.example config/database.yml
```
Edit config/database.yml to match with your local database settings such as database name and login credentials.
**4. Run Migrations**
```
rails db:migrate
```
**5. Start the Application**
```
rails server
```
Go to http://localhost:3000 in your web browser to see the app

**6. Run Unit Tests**
```
rspec
```

So thats all the setup you need to do. Now, the YouTube Sharing App is up and running on your local machine. Just check the web browser and feel free to use the app.
