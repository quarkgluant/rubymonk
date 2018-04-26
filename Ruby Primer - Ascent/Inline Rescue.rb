EXAMPLE_SECRETS = ["het", "keca", "si", nil, "iel"]

def decode(jumble)
  secret = jumble.split("").rotate(3).join("")
  announce(secret)
  secret
end
def decode_all(tab_chaines)
  tab_chaines.each{|tab_chaine| decode(tab_chaine)} rescue "it's okay, little buddy."
end