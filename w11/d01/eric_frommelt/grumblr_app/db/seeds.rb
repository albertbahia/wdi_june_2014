# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Grumble.destroy_all

grumbles = Grumble.create([
  { author: 'Eric', content: 'The Internet Protocol (IP) is the principal communications protocol in the Internet protocol suite for relaying datagrams across network boundaries. Its routing function enables internetworking, and essentially establishes the Internet.', image: 'http://transition.fcc.gov/pshs/images/tech-topics/wi-fi.gif', avatar: 'http://vr-zone.com/uploads/16355/IP.png'}, { author: 'Kevin', content: 'IP, as the primary protocol in the Internet layer of the Internet protocol suite, has the task of delivering packets from the source host to the destination host solely based on the IP addresses in the packet headers. For this purpose, IP defines packet structures that encapsulate the data to be delivered. It also defines addressing methods that are used to label the datagram with source and destination information.', image: 'http://www.linktionary.com/i/ip2.jpg', avatar: 'http://www.linktionary.com/i/ip2.jpg'}, { author: 'Jason', content: 'Historically, IP was the connectionless datagram service in the original Transmission Control Program introduced by Vint Cerf and Bob Kahn in 1974; the other being the connection-oriented Transmission Control Protocol (TCP). The Internet protocol suite is therefore often referred to as TCP/IP.', image: 'http://www.chem.arizona.edu/miesfeld/teaching/Bioc471-2/pages/Lecture23/AMG9.5b.gif', avatar: 'http://www.elec-intro.com/EX/05-13-23/2_TCPIP_Protocol_Suite.jpg'}, { author: 'Steve', content: 'The first major version of IP, Internet Protocol Version 4 (IPv4), is the dominant protocol of the Internet. Its successor is Internet Protocol Version 6 (IPv6).', image:'http://www.enggpedia.com/images/stories/voip_diagram.png', avatar: 'http://www.saunalahti.fi/pesonpa/projects/windows_2003/Install_W2k3_Enterprice_server_create_partitions.png'}
  ])
