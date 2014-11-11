require 'helper'

class TestBueditorRails < Test::Unit::TestCase
  #should "probably rename this file and start testing for real" do
  #  flunk "hey buddy, you should probably rename this file and start testing for real"
  #end
  should 'declare version' do
    assert defined?(Bueditor::VERSION)
  end

  should 'all asset exist' do
    Bueditor.assets.each do |asset|
      assert File.exists?(asset)
    end
  end

end
