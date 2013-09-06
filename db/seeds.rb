@fito = Dev.create(
  name: 'Fito',
  active: true,
  email: 'fito.vonzastrow@socialchorus.com'
)

@ian = Dev.create(
  name: 'Ian',
  active: true,
  email: 'ian.cooper@socialchorus.com'

)

@pairing1 = Pairing.create(
  leader: @ian,
  follower: @fito
)