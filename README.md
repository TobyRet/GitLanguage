Favourite Programming Language
------------------------------

This app uses the Github API to determine the likely 'favourite' programming language for a particular Github user.

The app works by fetching information about a user's repositories and measuring the frequency of each programming language used, returning the one with the highest frequency.

Test driven development (Rspec and Cabyrbara gems) was used throughout the process.

### Access the app
This app is live on Heroku - http://shielded-atoll-7695.herokuapp.com/

### To do
These are some further improvements that could be made:

1. Authenticating Github API calls or stubbing requests to API. Currently only 60 calls an hour are allowed. This improvement would only be required if additional features were to be added.
2. Error handling for when a user enters an invalid Github username.

### Screengrab

![](app/assets/images/screengrab.png)
