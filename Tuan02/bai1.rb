arr = [4,3,1,5,2,9,8]

print "min: ", arr.min, "\n"
print "max: ", arr.max, "\n"
print "avg: ", arr.reduce(:+).to_f / arr.length , "\n"