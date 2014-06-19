require_relative 'spec_helper'
require_relative '../lib/uxi'

describe '###uxi initialize' do
  let(:uxi) { UXI.new('New York', 'June', 2014) }
  it 'has a location' do
    expect(uxi.location).to eq('New York')
  end

  it 'has a start month' do
    expect(uxi.start_month).to eq('June')
  end

  it 'has a start year' do
    expect(uxi.start_year).to eq(2014)
  end

  it 'has a topics array' do
    arr = ["The Design Process", "User Research", "Prototyping", "Interaction & Interface Design", "Visual Design Fundamentals", "Front-End Web Development for Designers", "Design Communication & Documentation", "Team Collaboration", "Professional Design Skills"]
    expect(uxi.topics).to eq([arr])
  end

  it 'has an link string pointing to uxi hmoe page' do
    expect(uxi.link).to eq('https://generalassemb.ly/education/user-experience-design-immersive')
  end

  it 'has a fullname' do
    expect(uxi.full_name).to eq("User Experience Immersive")
  end

  it 'has a validate_teacher method that accepts a valid teacher and returns true' do
    teacher = {
      name: "Khadijah",
      skills: [10, 10, 10, 10]
      #html, css, javascript, ui
      #max is 10 , 8 is passing
    }
    expect(uxi.validaate_teacher).to eq(true)
  end

  it 'has a validate_teacher method that rejects a valid teacher and returns false' do
    teacher = {
      name: "BadTeacher",
      skills: [7, 3, 9, 8]
      #html, css, javascript, ui
      #max is 10 , 8 is passing
    }
    expect(uxi.validaate_teacher(teacher)).to eq(true)
  end

  it 'has a validate_student method that accepts a valid student and returns true' do
    student = {
      name: "StudentTheGreat",
      skills: [10, 10, 10, 10],
      prework: true
      #html, css, javascript, ui
      #max is 10, 5 is passing
    }
    expect(uxi.validaate_student(student)).to eq(true)
  end

  it 'has a validate_student method that accepts a valid student and returns true' do
    student = {
      name: "NotYetReady",
      skills: [1, 1, 1, 1],
      prework: false
      #html, css, javascript, ui
      #max is 10, 5 is passing
    }
    expect(uxi.validaate_student(student)).to eq(false)
  end
end
