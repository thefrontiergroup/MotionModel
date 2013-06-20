describe DateParser do
	describe '.parse_date' do
		it 'should allow parsing of a formatted date' do
      DateParser.parse_date("2013-02-20 09:00:00 -0800").is_a?(NSDate).should == true
    end

    it 'should allow parsing of a blank' do
      DateParser.parse_date("").should == nil
    end

    it 'should allow extraction from text' do
      DateParser.parse_date('There is a date in here tomorrow at 9:00 AM').is_a?(NSDate).should == true
    end
  end

  describe '.parse_time_zone' do
    it 'should allow parsing of a formatted date' do
      DateParser.parse_time_zone("2013-02-20 09:00:00 -0800").name.should == 'GMT-0800'
    end

    it 'should allow parsing of a blank' do
      DateParser.parse_time_zone("").should == nil
    end
  end

  describe '.parse_duration' do
    it 'should allow parsing of text' do
      DateParser.parse_duration("You have a meeting from 9:00 AM to 3:00 PM").should == 21600.0
    end
  end

  it 'should allow parsing of a blank' do
    DateParser.parse_duration("").should == nil
  end

end