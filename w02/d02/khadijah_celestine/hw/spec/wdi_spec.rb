require_relative 'spec_helper'
require_relative '../lib/wdi'

describe '###wdi initialize' do
  let(:wdi) { WDI.new('New York', 'June', 2014) }
  it 'has a location' do
    expect(wdi.location).to eq('New York')
  end

  it 'has a start month' do
    expect(wdi.start_month).to eq('June')
  end

  it 'has a start year' do
    expect(wdi.start_year).to eq(2014)
  end

  it 'has a topics array' do
    arr = ["Installfest (Getting Setup)", "Fundamentals of Programming with Ruby and TDD", "Introduction to the Web and HTML5 + CSS3", "Databases and APIs", "Ruby on Rails and MVC Concepts", "Team Dynamics with Agile Methodologies + Presentation and Research Skills", "JavaScript Fundamentals", "jQuery + AJAX", "JavaScript Libraries + MVC", "Advanced Ruby on Rails Topics", "System Administration", "Computer Science"]
    expect(wdi.topics).to eq([arr])
  end

  it 'has an link string pointing to wdi hmoe page' do
    expect(wdi.link).to eq('https://generalassemb.ly/education/web-development-immersive')
  end

  it 'has an empty fullname' do
    expect(wdi.full_name).to eq("Web Development Immersive")
  end

  it 'has a validate_teacher method that accepts a valid teacher and returns true' do
    teacher = {
      name: "Khadijah",
      skills: [10, 10, 10, 10, 10, 10]
      #html, css, javascript, ruby, database, computer science
      #max is 10 , 8 is passing
    }
    expect(wdi.validaate_teacher).to eq(true)
  end

  it 'has a validate_teacher method that rejects a valid teacher and returns false' do
    teacher = {
      name: "BadTeacher",
      skills: [10, 10, 10, 10, 10, 10]
      #html, css, javascript, ruby, database, computer science
      #max is 10 , 8 is passing
    }
    expect(wdi.validaate_teacher(teacher)).to eq(true)
  end

  it 'has a validate_student method that accepts a valid student and returns true' do
    student = {
      name: "StudentTheGreat",
      skills: [10, 10, 10, 10, 10, 10],
      prework: true
      #html, css, javascript, ruby, database, computer science
      #max is 10, 5 is passing
    }
    expect(wdi.validaate_student(student)).to eq(true)
  end

  it 'has a validate_student method that accepts a valid student and returns true' do
    student = {
      name: "NotYetReady",
      skills: [1, 1, 1, 1, 1, 1],
      prework: false
      #html, css, javascript, ruby, database, computer science
      #max is 10, 5 is passing
    }
    expect(wdi.validaate_student(student)).to eq(false)
  end
end
