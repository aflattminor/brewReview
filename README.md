![Build Status](https://codeship.com/projects/0dcf82e0-748b-0135-298f-6261ba794a34/status?branch=master)
<!-- ![Code Climate](https://codeclimate.com/github/Luna2442/brewReivew.png) -->
![Coverage Status](https://coveralls.io/repos/github/Luna2442/brewReview/badge.svg?branch=master)

# BREWREVIEW
[Live Site](https://brewreview2.herokuapp.com/brewpubs)

![Logo Icon](https://cdn.pastemagazine.com/www/articles/15560626399_6c4328f9ba_h%20%281%29.jpg)

## Synopsis
BrewReview is a site that reviews Philadelphia's brewpubs according to user input. The site was designed to demonstrate all basic CRUD actions.

#### Features
Users can login to create an account and may add their favorite brewpubs for other users to review! A user can also submit individual reviews on other brewpubs. Individual user reviews can also then be up voted or down voted.

All reviews and brewpubs are associated to an individual user. If the user no longer wishes to display that brewpub or review, the user can choose to delete it from the site.

## Getting Started
With rails and npm installed, clone this repo down and bundle / npm install. Run ```rails s``` and ```npm start``` to boot up the servers. Navigate to the default ```localhost:3000``` to view the site locally.

## Build
BrewReview uses a Ruby on Rails back end with some React.js for the front end.

### Notable Gems
* [Devise](https://github.com/plataformatec/devise) for user authentication.
* [CarrierWave](https://github.com/carrierwaveuploader/carrierwave) for image uploading.

## Motivation
We like beer and we know you do too, so come on down and submit your review!

## Testing
To run the tests for this app, running the command ```rake``` in your terminal will run all Ruby tests. Since some of the front end is using React.js, running ```karma start``` will run the Javascript tests.

## Contributors
[Alex Luna](https://github.com/Luna2442)

[Michael Jennings](https://github.com/Jennings824)

[Craig Ternowchek](https://github.com/cmternowchek)

[Andrew Flattery](https://github.com/aflattminor)
