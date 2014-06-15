require 'spec_helper'

describe AwesomeList do
  before :each do
    # *Awesomeness not reflective of how much I like a character
    @awesome_list = AwesomeList.new([
      {name: "Michael Bluth", awesomeness: 6},
      {name: "Buster Bluth", awesomeness: 7},
      {name: "G.O.B", awesomeness: 8},
      {name: "Gene Parmesan", awesomeness: 4},
      {name: "Lucille Bluth", awesomeness: 9},
      {name: "Tobias Funke", awesomeness: 7},
      {name: "Steve Holt", awesomeness: 8},
      {name: "Annyong", awesomeness: 5},
      {name: "Egg", awesomeness: -10},
      {name: "Carl Weathers", awesomeness: 10},
      {name: "George Michael Bluth", awesomeness: 6},
      {name: "Maeby Funke", awesomeness: 7}
    ])
  end

  describe "::new" do
    it "should take an array of {name, awesomeness} hashes" do
      expect{AwesomeList.new([{name: "G.O.B", awesomeness: 8}])}.to_not raise_error
    end
  end

  describe "#most_awesome_person" do
    it "should return the most awesome person" do
      expect(@awesome_list.most_awesome_person).to eq({name: "Carl Weathers", awesomeness: 10})
    end
  end

  describe "#average_awesomeness" do
    it "should return the average awesomeness" do
      @list_1 = AwesomeList.new([{name: "G.O.B", awesomeness: 8}])
      expect(@list_1.average_awesomeness).to be 8
      @list_2 = AwesomeList.new([{name: "G.O.B", awesomeness: 8}, {name: "Gene Parmesan", awesomeness: 4}])
      expect(@list_2.average_awesomeness).to be 6
    end
  end

  describe "#top_awesome_people" do
    it "should return the top ten awesome people" do
      top_awesome_people = @awesome_list.top_awesome_people
      expect(top_awesome_people.length).to eq 10
      expect(top_awesome_people.first).to eq({name: "Carl Weathers", awesomeness: 10})
      expect(top_awesome_people).to_not include({name: "Egg", awesomeness: -10})
    end
    it "should return the top n awesome people" do
      top_awesome_people = @awesome_list.top_awesome_people(3)
      expect(top_awesome_people.length).to eq 3
      expect(top_awesome_people).to eq([
        {name: "Carl Weathers", awesomeness: 10},
        {name: "Lucille Bluth", awesomeness: 9},
        {name: "G.O.B", awesomeness: 8}
      ])
    end
  end
end
