mongoose = require 'mongoose'

# From the docs:
# Everything in Mongoose starts with a Schema.
# Each schema maps to a MongoDB collection and defines the shape of the documents within that collection.
Schema = mongoose.Schema

# From the docs:
# The permitted SchemaTypes are

# String
# Number
# Date
# Buffer
# Boolean
# Mixed
# ObjectId
# Array
BearSchema = new Schema {
  name: String
}

# From the docs:
# The next step is compiling our schema into a Model.
# Models are fancy constructors compiled from our Schema definitions.
#  Instances of these models represent documents which can be saved and retreived from our database.
#  All document creation and retreival from the database is handled by these models.
module.exports = mongoose.model 'Bear', BearSchema