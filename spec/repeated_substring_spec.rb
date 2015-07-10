require 'spec_helper'
require 'repeated_substring'

RSpec.describe 'repeated_substring' do
  it 'should return ba for banana' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring('banana')).to eq("an")
  end
  
  it 'should return bab for bablobab' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring('bablobab')).to eq("bab")
  end 

  it 'should return loo for baloolooba' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring('baloolooba')).to eq("loo")
  end

  it 'should return bab for abcdef' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring('abcdef')).to eq("NONE")
  end

  it 'should return bu for bababubu' do
    rs = RepeatedSubstring.new
    expect(rs.find_repeated_substring('bababubu')).to eq("bu")
  end
  it 'find the most repeated substring for every line of a file' do
  expect(RepeatedSubstring.new.find_repeated_substring_file('data/sample.txt')).to eq(["an", "NONE", "NONE", "oo"])
  end
end
