#
# Testing Rools
#
# Pat Cappelaere
#
# Wed Apr 25 20:50:00 EDT 2007
#

require 'helper'

    
class XMLTest < Test::Unit::TestCase
  def setup
    #Rools::Base.logger = Logger.new(STDOUT)
  end
  
  def test_xml_1
    rules  = Rools::RuleSet.new 'test/fixtures/un.xml'
	status = rules.assert 'France'
	assert status == :pass
	assert rules.num_executed == 1
	assert rules.num_evaluated == 1
  end
  
  def test_xml_2
    rules  = Rools::RuleSet.new 'test/fixtures/hello.xml'
	status = rules.assert 'Heya'
	assert status == :pass
	assert rules.num_executed == 1
	assert rules.num_evaluated == 1
  end
	
end