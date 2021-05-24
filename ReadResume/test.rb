require 'json'

f = File.read("D:/Ruby-StringsAndArrays/ReadResume/1535974637581_an - ANJUNA ANIL.pdf.json")
var = JSON.parse(f)
p var["file_name"]