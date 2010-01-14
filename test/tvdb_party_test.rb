require 'test_helper'

class TvdbPartyTest < Test::Unit::TestCase
  context "tvdb" do
    setup do 
      @tvdb = TvdbParty::Search.new('A97A9243F8030477')
    end
  
    context "search for terrible query" do
      setup do
        @results = @tvdb.search("sdfsafsdfds")
      end
      
      should "have 0 results" do
        assert_equal 0, @results.size
      end
    
    end

    context "search for real show" do
      setup do
        @results = @tvdb.search("The Office US")
      end
      
      should "have 1 results" do
        assert_equal 1, @results.size
      end
      
      context "get the series" do
        setup do 
          @series = @tvdb.get_series_by_id(@results.first['seriesid'])
        end
        
        should "have a series" do
          assert_equal TvdbParty::Series, @series.class
        end

        should "have a first episode" do
          assert_equal "110413", @series.get_episode(1, 1).id
        end
      end    
    end
    
    context "get all episodes" do
      setup do
        @series = @tvdb.get_series_by_id(83232) # little britain (US)
      end
      
      should "contain 6 episodes" do
        assert_equal 6, @series.get_all_episodes.size
      end      
    end    
  end
  context "non english series" do
    setup do
      @tvdb = TvdbParty::Search.new('A97A9243F8030477', 'de')
    end
    context "search for real show" do
      setup do
        @results = @tvdb.search("Keine Gnade für Dad")
      end

      should "have 1 results" do
        assert_equal 1, @results.size
      end
    end
  end
end
