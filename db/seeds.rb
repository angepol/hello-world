Journey.destroy_all

j1 = Journey.create(:name => "California Sun", :countries => "America", :departure_date => "2016-08-05", :return_date => "2016-08-13", :image => "https://www.outsideonline.com/wp-content/uploads/2019/04/12/roadtrip-california-highway_h.jpg")
j2 = Journey.create(:name => "East Coast of Aus", :countries => "Australia", :departure_date => "2019-09-17", :return_date => "2019-09-19",:image => "https://www.visitmelbourne.com/-/media/images/features/staycation/dji_0006-1_d-hannah_1150x863.jpg?h=600&iar=1&mh=600&mw=800&w=800&ts=20201204211200&hash=29BCFEC058F9806C91CAC547E5085C05")
# j3 = Journey.create(:name => "Euro Road Trip", :countries => "France, Italy, Switzerland", :departure_date => "2019-05-11", :return_date => "2016-05-29")

puts "#{ Journey.count } journeys created."


Step.destroy_all

s1 = Step.create(:location => "Berkeley, CA, USA", :story => "Today we left Berkley, made a packed lunch and hit the road.",:date => "2016-07-05",:image => "https://oregonisforadventure.com/wp-content/uploads/2020/02/things-to-do-in-northern-california-road-trip-1536x1024.jpg.webp" )
s2 = Step.create(:location => "Big Sur, CA, USA", :story => "Stopped in Big Sur for a swim, we stayed at the camp ground",:date => "2016-07-06",:image => "https://www.outsideonline.com/wp-content/uploads/2019/10/08/big-sur-waterfall_h.jpg" )
s3 = Step.create(:location => "Pfeiffer Beach, CA, USA", :story => "Here we explored the glorious coastline",:date => "2016-07-08",:image => "https://www.californiabeaches.com/wp-content/uploads/2014/09/Screenshot-2014-10-30-14.09.57-1000x505.jpg" )
s4 = Step.create(:location => "San Carpoforo Creek, San Simeon, CA, USA", :story => "Here we explored the glorious coastline",:date => "2016-07-09",:image => "https://www.californiabeaches.com/wp-content/uploads/2014/09/Screenshot-2014-10-30-14.09.57-1000x505.jpg" )
s5 = Step.create(:location => "Ragged Point, CA, USA", :story => "We went for a hike!",:date => "2016-07-10",:image => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrYW3ycaijELMMEwjb5NLyuenQgHWA-kWE_Q&usqp=CAU" )
s6 = Step.create(:location => "Notleys landing, CA, USA", :story => "We enjoyed a spectacular lunch",:date => "2016-07-12",:image => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQMq5b0qd-3nUiWeBd8Coittm3P-k9WeOlsQ&usqp=CAU" )
s7 = Step.create(:location => "Berkeley, CA, USA", :story => "Today we arrive back in Berkley after a wonderful coastal adventure. Feeling revitalised! ",:date => "2016-07-13",:image => "https://ap.rdcpix.com/6465a43fc55e895a777e1d12a2d188f7l-m3324943455od-w480_h360.jpg" )
s8 = Step.create(:location => "Byron Bay, NSW, Australia", :story => "I left to go on tour ",:date => "2019-09-17",:image => "https://ap.rdcpix.com/6465a43fc55e895a777e1d12a2d188f7l-m3324943455od-w480_h360.jpg" )
s9 = Step.create(:location => "Sydney, NSW, Australia", :story => "We stoped over in Sydndey",:date => "2019-09-18",:image => "https://ap.rdcpix.com/6465a43fc55e895a777e1d12a2d188f7l-m3324943455od-w480_h360.jpg" )
s10 = Step.create(:location => "Melbourne, Vic, Australia", :story => "We arrived in Melbourne",:date => "2016-19-1",:image => "https://ap.rdcpix.com/6465a43fc55e895a777e1d12a2d188f7l-m3324943455od-w480_h360.jpg" )

puts "#{ Step.count } steps "


User.destroy_all

u1 = User.create(:name => "Angie", :email => "angelinepolidano@gmail.com", :admin => true, :password => "chicken")
u2 = User.create(:name => "Jayden", :email => "craigsy@ga.co", :admin => false, :password => "chicken" )

puts "#{ User.count } users "


# Assocations ##################################################################

puts "Journeys and steps"
j1.steps << s1 << s2 << s3 << s4 << s5 << s6 << s7
j2.steps << s8 << s9 << s10


puts "Users and journeys"
u1.journeys << j1
u2.journeys << j2
