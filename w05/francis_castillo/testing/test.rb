require 'json'
require 'pry'

JSON.parse('{
id: 97,
title: "Engineer",
description: "We\'re looking for awesome full-stack engineers of all stripes -- no previous experience in Ruby required. ",
created_at: "2011-12-05T21:05:43Z",
updated_at: "2014-03-03T23:40:30Z",
equity_cliff: "1.0",
equity_min: "0.2",
equity_max: "0.2",
equity_vest: "6.0",
currency_code: "USD",
job_type: "full-time",
salary_min: 120000,
salary_max: 150000,
angellist_url: "https://angel.co/jobs?startup_id=6702",
tags: [
{
id: 14766,
tag_type: "SkillTag",
name: "software engineering",
display_name: "Software Engineering",
angellist_url: "https://angel.co/software-engineering"
},
{
id: 17236,
tag_type: "SkillTag",
name: "web development",
display_name: "Web Development",
angellist_url: "https://angel.co/web-development-2"
},
{
id: 17473,
tag_type: "SkillTag",
name: "databases",
display_name: "Databases",
angellist_url: "https://angel.co/databases-1"
},
{
id: 21133,
tag_type: "SkillTag",
name: "coffeescript",
display_name: "Coffeescript",
angellist_url: "https://angel.co/coffeescript"
},
{
id: 82532,
tag_type: "SkillTag",
name: "ruby on rails",
display_name: "Ruby on Rails",
angellist_url: "https://angel.co/ruby-on-rails-1"
},
{
id: 1692,
tag_type: "LocationTag",
name: "san francisco",
display_name: "San Francisco",
angellist_url: "https://angel.co/san-francisco"
},
{
id: 14726,
tag_type: "RoleTag",
name: "developer",
display_name: "Developer",
angellist_url: "https://angel.co/developer"
}
],
startup: {
id: 6702,
hidden: false,
community_profile: false,
name: "AngelList",
angellist_url: "https://angel.co/angellist",
logo_url: "https://s3.amazonaws.com/photos.angel.co/startups/i/6702-766d1ce00c99ce9a5cbc19d0c87a436e-medium_jpg.jpg?buster=1367604615",
thumb_url: "https://s3.amazonaws.com/photos.angel.co/startups/i/6702-766d1ce00c99ce9a5cbc19d0c87a436e-thumb_jpg.jpg?buster=1367604615",
quality: 10,
product_desc: "AngelList is a platform for startups to meet investors, talent and incubators. - Meet investors http://angel.co/people/investors and raise money online http://angel.co/invest - Meet candidates http://angel.co/jobs - Apply to incubators http://angel.co/incubators/apply We also have an API http://angel.co/api.",
high_concept: "A platform for startups.",
follower_count: 6019,
company_url: "http://angel.co",
created_at: "2011-03-18T00:24:29Z",
updated_at: "2014-06-17T16:12:06Z"
}
}')

binding.pry
