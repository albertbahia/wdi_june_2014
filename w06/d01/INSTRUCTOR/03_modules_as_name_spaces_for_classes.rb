=begin
Examples of namespaces we've seen in rails
class User < ActiveRecord::Base
end
class ApplicationController < ActionController::Base
end
=end

module PDF
  # this is a constant defined in the module
  VERSION = "1.0.1"

  # this is a class defined in the module.
  # It doesn't affect the behavior of the class, it just means
  # we can refer to this class as PDF::Document
  class Document
    FILE_EXTENSION = ".pdf"

    def generate
      # generates the document
    end
  end
end

# Referring to the class in the module:
my_pdf = PDF::Document.new
my_pdf.generate

# Referring to constants in the module:
PDF::VERSION
# => "1.0.1"

# Load in the gem "word_doc_maker_clippy_helper"
# Well-designed gems will namespace their classes to prevent conflicts
my_word_doc = WordDocMakerClippyHelper::Document.new
my_word_doc.generate
