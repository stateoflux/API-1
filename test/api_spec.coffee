frisby = require 'frisby'

URL = 'http://localhost:3000'

frisby.create('GET hello world').get(URL).expectStatus(200).expectJSONTypes(
  test: String
).expectJSON(
  test: 'hello world'
).toss()