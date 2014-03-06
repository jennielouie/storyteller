# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Writer.create([
  { name: 'Paco', provider: 'facebook', uid: '2345' },
  { name: 'Jennie', provider: 'facebook', uid: '1648' },
  { name: 'Anil', provider: 'facebook', uid: '3478' },
  { name: 'Feather', provider: 'facebook', uid: '1682' }
])

Vote.create([
  { vote_type: 'true', narrative_id: 1, writer_id: 3 },
  { vote_type: 'false', narrative_id: 4, writer_id: 6 },
  { vote_type: 'false', narrative_id: 2, writer_id: 7 },
  { vote_type: 'true', narrative_id: 6, writer_id: 9 }
])

Narrative.create([
  { title: 'Etsy', story: 'Fixie keytar vegan, Odd Future deep v Tumblr mumblecore swag chillwave Wes Anderson bicycle rights freegan tattooed Godard.   ', writer_id: 1 },
  { title: 'Locavore', story: 'Lo-fi mixtape cardigan tousled cred.', writer_id: 2 },
  { title: 'You havent heard of them', story: 'Deep v quinoa biodiesel pug, trust fund kitsch street art ennui sartorial vegan Helvetica PBR&B asymmetrical.', writer_id: 2 },
  { title: 'Bahn Mi', story: 'Ugh lomo keffiyeh Thundercats, fashion axe Austin kitsch banh mi yr readymade.', writer_id: 4 },
  { title: 'Humblebrag', story: 'Meh actually twee fashion axe, dreamcatcher kitsch slow-carb Godard 8-bit asymmetrical photo booth. ', writer_id: 1 },
  { title: 'Poutine', story: 'Neutra master cleanse VHS retro twee Williamsburg you probably havent heard of them pour-over keytar leggings.', writer_id: 3 },
  { title: 'Hockey', story: 'Viral occupy fashion axe umami, semiotics sartorial cliche keytar ugh hoodie sriracha vegan.', writer_id: 2 },
  { title: 'Umami', story: 'Neutra meggings selfies banh mi, bicycle rights fanny pack swag distillery hoodie tofu vinyl kogi Carles.', writer_id: 4 }
])

Feedback.create([
  { comment: 'very good conclusion', writer_id: 4, narrative_id: 1 },
  { comment: 'good use of similies and diction', writer_id: 3, narrative_id: 2 },
  { comment: 'could improve on introduction', writer_id: 1, narrative_id: 4 },
  { comment: 'Keep on doing greate work', writer_id: 4, narrative_id: 3 }
])

Image.create([
  { url: 'http://justcuteanimals.com/wp-content/uploads/2013/02/cute-animals-little-turtle-looking-out-window-pics.jpg' },
  { url: 'http://www.carloweducatetogether.ie/michaelcet/wp-content/uploads/2012/09/caption.jpg' },
  { url: 'http://blog.geocaching.com/wp-content/uploads/2010/12/Caption-Contest-Squirrel.jpg' },
  { url: 'http://www.burnmagazine.org/wp-content/uploads/2010/06/obx-van.jpg' }
  ])

ImageNarratives.create([
  { image_id: 1, narrative_id: 4 },
  { image_id: 2, narrative_id: 3 },
  { image_id: 3, narrative_id: 1 },
  { image_id: 4, narrative_id: 2 },
  { image_id: 1, narrative_id: 5 },
  { image_id: 2, narrative_id: 6 },
  { image_id: 3, narrative_id: 7 },
  { image_id: 4, narrative_id: 8 }
])

