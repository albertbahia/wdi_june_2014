require_relative 'spec_helper'
require_relative '../lib/ga'

describe '###ga initialize' do
  let(:ga) { GA.new('New York', 'June', 2014) }
  it 'has a location' do
    expect(ga.location).to eq('New York')
  end

  it 'has a start month' do
    expect(ga.start_month).to eq('June')
  end

  it 'has a start year' do
    expect(ga.start_year).to eq(2014)
  end

  it 'has an empty topics array' do
    expect(ga.topics).to eq(Array.new)
  end

  it 'has an link string pointing to ga hmoe page' do
    expect(ga.link).to eq('https://generalassemb.ly/')
  end

  it 'has an empty fullname' do
    expect(ga.full_name).to eq("")
  end

  it 'has a validate_teacher method' do
    expect(ga.validaate_teacher).to eq(nil)
  end

  it 'has a validate_student method' do
    expect(ga.validaate_teacher).to eq(nil)
  end
=begin
@time_commitment = full time
@topics = []
@link = “”
@fullname = “”

def validate_teacher
def validate_student
=end
end
