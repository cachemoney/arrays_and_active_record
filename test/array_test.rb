require "test/unit"

class ArrayTest < Test::Unit::TestCase
 
  def test_true
    assert false
  end

  def test_reject
    array = [1,2,3,4,5,6,7,8]
    # put your code here
    assert_equal [1,3,5,7], array
  end


  # write code that returns the first three elements of the array
  def test_first_three
    array = [1,2,3,4,5]
    # put your code here
    assert_equal [1,2,3], array
  end

  # write code that returns the last three elements of the array
  def test_last_three
    array = [1,2,3,4,5]
    # put your code here
    assert_equal [3,4,5], array
  end

  # fix this test using only Array#map
  def test_map
    array = [1,2,3,4,5,6,7,8]
    # put your code here
    assert_equal [2, 4, 6, 8, 10, 12, 14, 16] , array
  end

  # fix this test using only Array#map!
  # most methods that end in a bang (!) modify the original object
  # do not use assignment in this exercise, i.e. don't use "array =" 
  # in your solution
  def test_map_bang
    array = [1,2,3,4,5,6,7,8]
    # put your code here
    assert_equal [1, 3, 5, 7, 9, 11, 13, 15] , array
  end


  # rather than rejecting elements based on a condition sometimes you want to 
  # pull out a select set of elements, in one line of code and without using reject
  # find and use an array method that makes this test pass.
  # Hint: Object#is_a?
  def test_oposite_of_reject
    array = ["hello", 2, 3, "there", "how", 9, "are you"]
    # put your code here
    assert_equal ["hello", "there", "how", "are you"], array
  end


  # sometimes we don't need a whole array to be returned, you just need to know if an 
  # element exists in it. Write one line of code that will return true or false if it
  # detects the number 99 in an array
  def test_is_element_in_array
    array = [1,2,3,4,5,99]
    assert_block do
      # put your code here
    end
  end


  # add the element 99 to this array using the Append operator
  def  test_array_append
    array = [1,2,3,4,5]
    # put your code here
    assert_equal [1,2,3,4,5], array
  end


  # combine two arrays using the Concatenation operator
  def test_combine_arrays
    array_one = [1,2,3,4,5]
    array_two = [6,7,8,9,10]
    # put your code here
    assert_equal [1,2,3,4,5,6,7,8,9,10], array
  end

  # this is one of my favorite array operators, though a bit obscure.
  # I want you to find all of the elements that exist in two different arrays
  # Use Array#&
  # This is called the intersection, I like to think of it like a venn diagram intersection operator
  def test_combine_arrays
    array_one = [1,2,3,4,5]
    array_two = [2,5,9]
    # put your code here
    assert_equal [2,5], array
  end


  # Find all elements that exist in array_one but are not present in array_two
  # Use the Difference operator
  def test_difference_one_from_two
    array_one = [1,2,3,4,5]
    array_two = [2,5,9]
    # put your code here
    assert_equal [1,3,4], array
  end

  # Like the last but the opposite,
  # Find all elements that exist in array_two but are not present in array_one
  # Use the Difference operator
  def test_difference_one_from_two
    array_one = [1,2,3,4,5]
    array_two = [2,5,9]
    # put your code here
    assert_equal [9], array
  end


  # sometimes we accidentally build arrays within arrays, use a method that fixes this problem
  def test_fix_nested_array
    array = [1, [2], [3, [4,[5]]], 6]
    # put your code here
    assert_equal [1,2,3,4,5,6], array
  end

  # sometimes we accidentally build arrays that have unintended nil objects, remove them from this array
  def test_fix_nested_array
    array_one = [1, nil, 2, 3, 4, nil, 5, nil]
    # put your code here
    assert_equal [1,2,3,4,5], array
  end


  # find the number of elements in this array
  # assign it to a variable labeled num_of_elem
  def test_array_number_of_elements
    array = [1,2,3,4]
    # put your code here
    assert_equal 4, num_of_elem
  end

  
  # sometimes you have an array and you need to build a hash 
  # use the `Array#each_with_object` 
  # http://www.ruby-doc.org/core-1.9.3/Enumerable.html#method-i-each_with_object
  # set this to a variable called hash
  def test_each_with_object
    array = [["name", "richard"], ["movie", "zoolander"]]
    # put your code here 
    # hash = array.each_with_object({}) {|item, hash| }
    assert_equal({"name"=>"richard", "movie"=>"zoolander"}, hash)
  end

end
