require 'httparty'
require 'awesome_print'

response = HTTParty.get("https://makemeapassword.org/api/v1/passphrase/json?pc=10&wc=4&sp=y&maxCh=64")

password_json = JSON.parse(response.body)

passwords = password_json["pws"]

ap passwords
