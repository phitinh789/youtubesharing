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
* **A Text Editor:** You need one to work on the app's code. Free to use any type of text editor which you good at.

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

## Usage
**1. Clone the Repository**
* If you are a new user, click "Sign Up" to create a new account. Provide your email and password to register.
* If you already have an account, click "Sign In" and enter your email and password to log in.

**2. Share a YouTube Link**

Once you are signed in, you can share a YouTube video link:
* Click "Share a movie" in the navigation menu.
* Enter the YouTube video URL in the provided field.
* Click the "Share" button.
* Your shared video will now be visible to other users.

**3. Interact with Videos**

You can browse and interact with shared videos:
* Visit the homepage to see a list of shared videos.
* You can up vote or down vote a video.

**4. Sign Out**
* To log out of your account, click "Sign out" in the navigation menu.

## Troubleshooting
**1. Database Connection Issues**

**Issue:** You are unable to connect to the database.

**Solution:**

* Double-check your database configuration in the config/database.yml file
* Ensure that the database server is running
* Verify that the database user has permissions to access the database

**2. Application Start-up Problems**

**Issue:** The Rails server does not start

**Solution:**

* Check for any error messages in the terminal when starting the server
* Verify that the server is listening on the correct port, typically http://localhost:3000

**3. Environment Variables**

**Issue:** The application depends on environment variables that are not correctly configured.

**Solution:**

* Check the message errors and try to fix it.

**4. Database Migrations**

**Issue:** Database migrations are not applying, and the database schema is not up to date.

**Solution:**

* Run rails db:migrate to apply pending migrations
* Check the message errors and double check Rails docs for troubleshooting

**5. Bugs and Errors**

**Issue:** You get some application-specific errors or bugs.

**Solution:**

* Check the application's log to see what it is, try to fix it.
* Or go to stackoverflow for seeking help, open a new issue if necessary


## Thank u
That's all. If have any problem during setup this app, feel free to send your concern to my email "phitinh282@gmail".
Happly to help.
Cheers.
