# README

To launch your own version of this app add your Yoti variables to .env.default and rename it to .env.
You will then be able to push the app to heroku.
The app works by restricting access to the store, a user can register with their email but can't
access the store until verified by Yoti, verification happens once and the Yoti user_id is stored
as an attribute on the user table.

