module PDF
  class Document
    def generate
      # generates the document
    end
  end
end

# class User < ActiveRecord::Base
# end

# class ApplicationController < ActionController::Base
# end

my_pdf = PDF::Document.new
my_pdf.generate

gem "work_doc_maker_clippy_helper"

my_word_doc = Document.new
my_word_doc.generate
