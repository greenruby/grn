# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tags = {}
tags[:rb] = Tag.create name: 'rb', longname: 'ruby', icon: 'rb.png'
tags[:css3] = Tag.create name: 'css3', longname: 'css3', icon: 'css3.png'
tags[:design] = Tag.create name: 'design', longname: 'design', icon: 'design.png'
tags[:go] = Tag.create name: 'go', longname: 'golang', icon: 'go.png'
tags[:html5] = Tag.create name: 'html5', longname: 'html5', icon: 'html5.png'
tags[:js] = Tag.create name: 'js', longname: 'javascript', icon: 'js.png'
tags[:mobile] = Tag.create name: 'mobile', longname: 'mobile', icon: 'mobile.png'
tags[:ops] = Tag.create name: 'ops', longname: 'devops', icon: 'ops.png'
tags[:tool] = Tag.create name: 'tool', longname: 'tool', icon: 'tool.png'
tags[:web] = Tag.create name: 'web', longname: 'web', icon: 'web.png'

categories = {}
categories[:look] = Category.create name: 'look', description: 'Examples of UI/UX, graphic performance, web design and flashy things.'
categories[:use] = Category.create name: 'use', description: 'Web applications, resources and tools, available for making our life easier or funnier.'
categories[:install] = Category.create name: 'install', description: 'A selection of gems or applications updated during past week.'
categories[:read] = Category.create name: 'read', description: 'From the blogosphere or news feeds ...'
categories[:watch] = Category.create name: 'watch', description: 'Screencasts and conferences videos, or other video feeds ...'
categories[:listen] = Category.create name: 'listen', description: 'What could be heard last week ..'

adminuser = User.new email: 'admin@example.com', password: 'admin'
adminuser.save! validate: false

contributor = User.new email: 'contributor@example.com', password: 'contributor'
contributor.save! validate: false

editions = {}
editions['001'] = Edition.create title: '001', pubdate: 14.days.ago, edito: 'the first edito.'
editions['002'] = Edition.create title: '002', pubdate: 7.days.ago, edito: 'the second edito.'
editions['003'] = Edition.create title: '003', pubdate: 1.days.ago, edito: 'the third edito.'

Item.create(
  title: 'RubyRogues 091',
  url: 'http://rubyrogues.com/091-rr-the-ruby-design-process-with-brian-shirai/',
  description: 'Interesting discussion about ruby development governance, pretty long broadcast of almost 2 hours this time)..',
  pubdate: Date.parse('2013-02-09'),
  reporter: adminuser,
  edition: editions['001'],
  category: categories[:listen],
  maintag: tags[:rb]
)