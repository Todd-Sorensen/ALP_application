# lib/jruby_wrappers/corenlp_wrapper.rb

require 'java'
require "C:/Users/toddh/Documents/Core NLP Research/Java/corenlp_research_analysis/target/corenlp_research_analysis-1.0-SNAPSHOT.jar" # Load your Java JAR file

java_import 'tsk.TextAnalyzer' # Import your Java class

class CoreNLPWrapper
  def self.upload_file(file)
    analyzer = TextAnalyzer.upload_file(file)
  end
end