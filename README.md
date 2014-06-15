# AwesomeList

## Usage

You can create a new AwesomeList by giving it an array of {name[String], awesomeness[Integer]} hashes.

```ruby
my_awesome_list = AwesomeList.new([{name: "Michael Bluth", awesomeness: 6}, {name: "Carl Weathers", awesomeness: 10}])
```

From there you can get the `most_awesome_person`, the `average_awesomeness`, or a subset of the `top_awesome_people`

```ruby
my_awesome_list.most_awesome_person # => {name: "Carl Weathers", awesomeness: 10}
my_awesome_list.average_awesomeness # => 8

big_awesome_list = AwesomeList.new([
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

big_awesome_list.top_awesome_people(3) # => [{name: "Carl Weathers", awesomeness: 10}, {name: "Lucille Bluth", awesomeness: 9}, {name: "G.O.B", awesomeness: 8}]

big_awesome_list.top_awesome_people # defaults to returning 10 people
```
