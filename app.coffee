express    = require 'express'
app        = express()
bodyParser = require 'body-parser'

app.use bodyParser.urlencoded {extended: true}
app.use bodyParser.json()

port = process.env.PORT or 4000

router = express.Router()

router.get '/', (req, res) ->
  res.json {message: 'Hello ackzell!'}

app.use '/api', router

app.listen port
console.log "Listening on port #{port}"
