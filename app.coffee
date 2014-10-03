# Calling the packages I need to build the app
express    = require 'express'           # requiring express
app        = express()                   # defining the app namespace
bodyParser = require 'body-parser'       # body parser needs to be required independently in express 4
mongoose   = require 'mongoose'          # requiring mongoose
Bear       = require './app/models/bear' # this is the model we'll be using

mongoose.connect 'mongodb://localhost/bears'

#configuring the app to use bodyParser
# this will let us get the data from a POST
app.use bodyParser.urlencoded {extended: true}
app.use bodyParser.json()

port = process.env.PORT or 4000 # setting our port

# ROUTES FOR OUR API

router = express.Router() # get an instance of the express Router

# test route to make sure everything is working
# (http://localhost:4000/api)
router.get '/', (req, res) ->
  res.json {message: 'Hello ackzell!'}

# more routes for the API go here

# REGISTER ROUTES
# all of our routes will be prefixed with /api
app.use '/api', router

# START THE SERVER
app.listen port
console.log "Listening on port #{port}"
