ideal_length = Integer(ARGV[0])

# Give user number of hammock configurations
# accepting hammock lengths between one less and one more
# than the ideal length.

# I.e. how many configurations have the following property?
# ideal_length - 1 < X < ideal_length + 1

# Two sets of attachment points

# Hammock must be attached to one point from each set

# How many combinations are there?

RAIL_LENGTH_A = 12
RAIL_LENGTH_B = 8

# Triangles...

# PYTHAGORAS!!!

#        A
#     ------
#     |    /
#   B |   /
#     |  /  C
#     | /
#     |/

#  A^2 + B^2 = C^2

RAIL_A_COORDS = (1..RAIL_LENGTH_A).to_a
RAIL_B_COORDS = (1..RAIL_LENGTH_B).to_a

# Tinker in console
ALL_COMBINATIONS = RAIL_A_COORDS.product(RAIL_B_COORDS)

acceptable_lengths = (ideal_length-1..ideal_length+1)

combinations = ALL_COMBINATIONS.count do |a_length, b_length|
  # Uhh how do I do squaring...

  # NOT ^ which is a bitwise operation

  hammock_length = Math.sqrt(a_length**2 + b_length**2)

  acceptable = acceptable_lengths.cover? hammock_length

  puts ({ a_length:, b_length:, hammock_length:, acceptable: }).inspect

  acceptable
end

puts "There are #{ combinations } hammock configurations you may find suitable. Good day."


# output...but is it correct?

# {:a_length=>1, :b_length=>1, :hammock_length=>1.4142135623730951, :acceptable=>false}
# {:a_length=>1, :b_length=>2, :hammock_length=>2.23606797749979, :acceptable=>false}
# {:a_length=>1, :b_length=>3, :hammock_length=>3.1622776601683795, :acceptable=>false}
# {:a_length=>1, :b_length=>4, :hammock_length=>4.123105625617661, :acceptable=>true}
# {:a_length=>1, :b_length=>5, :hammock_length=>5.0990195135927845, :acceptable=>true}
# {:a_length=>1, :b_length=>6, :hammock_length=>6.082762530298219, :acceptable=>false}
# {:a_length=>1, :b_length=>7, :hammock_length=>7.0710678118654755, :acceptable=>false}
# {:a_length=>1, :b_length=>8, :hammock_length=>8.06225774829855, :acceptable=>false}
# {:a_length=>2, :b_length=>1, :hammock_length=>2.23606797749979, :acceptable=>false}
# {:a_length=>2, :b_length=>2, :hammock_length=>2.8284271247461903, :acceptable=>false}
# {:a_length=>2, :b_length=>3, :hammock_length=>3.605551275463989, :acceptable=>false}
# {:a_length=>2, :b_length=>4, :hammock_length=>4.47213595499958, :acceptable=>true}
# {:a_length=>2, :b_length=>5, :hammock_length=>5.385164807134504, :acceptable=>true}
# {:a_length=>2, :b_length=>6, :hammock_length=>6.324555320336759, :acceptable=>false}
# {:a_length=>2, :b_length=>7, :hammock_length=>7.280109889280518, :acceptable=>false}
# {:a_length=>2, :b_length=>8, :hammock_length=>8.246211251235321, :acceptable=>false}
# {:a_length=>3, :b_length=>1, :hammock_length=>3.1622776601683795, :acceptable=>false}
# {:a_length=>3, :b_length=>2, :hammock_length=>3.605551275463989, :acceptable=>false}
# {:a_length=>3, :b_length=>3, :hammock_length=>4.242640687119285, :acceptable=>true}
# {:a_length=>3, :b_length=>4, :hammock_length=>5.0, :acceptable=>true}
# {:a_length=>3, :b_length=>5, :hammock_length=>5.830951894845301, :acceptable=>true}
# {:a_length=>3, :b_length=>6, :hammock_length=>6.708203932499369, :acceptable=>false}
# {:a_length=>3, :b_length=>7, :hammock_length=>7.615773105863909, :acceptable=>false}
# {:a_length=>3, :b_length=>8, :hammock_length=>8.54400374531753, :acceptable=>false}
# {:a_length=>4, :b_length=>1, :hammock_length=>4.123105625617661, :acceptable=>true}
# {:a_length=>4, :b_length=>2, :hammock_length=>4.47213595499958, :acceptable=>true}
# {:a_length=>4, :b_length=>3, :hammock_length=>5.0, :acceptable=>true}
# {:a_length=>4, :b_length=>4, :hammock_length=>5.656854249492381, :acceptable=>true}
# {:a_length=>4, :b_length=>5, :hammock_length=>6.4031242374328485, :acceptable=>false}
# {:a_length=>4, :b_length=>6, :hammock_length=>7.211102550927978, :acceptable=>false}
# {:a_length=>4, :b_length=>7, :hammock_length=>8.06225774829855, :acceptable=>false}
# {:a_length=>4, :b_length=>8, :hammock_length=>8.94427190999916, :acceptable=>false}
# {:a_length=>5, :b_length=>1, :hammock_length=>5.0990195135927845, :acceptable=>true}
# {:a_length=>5, :b_length=>2, :hammock_length=>5.385164807134504, :acceptable=>true}
# {:a_length=>5, :b_length=>3, :hammock_length=>5.830951894845301, :acceptable=>true}
# {:a_length=>5, :b_length=>4, :hammock_length=>6.4031242374328485, :acceptable=>false}
# {:a_length=>5, :b_length=>5, :hammock_length=>7.0710678118654755, :acceptable=>false}
# {:a_length=>5, :b_length=>6, :hammock_length=>7.810249675906654, :acceptable=>false}
# {:a_length=>5, :b_length=>7, :hammock_length=>8.602325267042627, :acceptable=>false}
# {:a_length=>5, :b_length=>8, :hammock_length=>9.433981132056603, :acceptable=>false}
# {:a_length=>6, :b_length=>1, :hammock_length=>6.082762530298219, :acceptable=>false}
# {:a_length=>6, :b_length=>2, :hammock_length=>6.324555320336759, :acceptable=>false}
# {:a_length=>6, :b_length=>3, :hammock_length=>6.708203932499369, :acceptable=>false}
# {:a_length=>6, :b_length=>4, :hammock_length=>7.211102550927978, :acceptable=>false}
# {:a_length=>6, :b_length=>5, :hammock_length=>7.810249675906654, :acceptable=>false}
# {:a_length=>6, :b_length=>6, :hammock_length=>8.48528137423857, :acceptable=>false}
# {:a_length=>6, :b_length=>7, :hammock_length=>9.219544457292887, :acceptable=>false}
# {:a_length=>6, :b_length=>8, :hammock_length=>10.0, :acceptable=>false}
# {:a_length=>7, :b_length=>1, :hammock_length=>7.0710678118654755, :acceptable=>false}
# {:a_length=>7, :b_length=>2, :hammock_length=>7.280109889280518, :acceptable=>false}
# {:a_length=>7, :b_length=>3, :hammock_length=>7.615773105863909, :acceptable=>false}
# {:a_length=>7, :b_length=>4, :hammock_length=>8.06225774829855, :acceptable=>false}
# {:a_length=>7, :b_length=>5, :hammock_length=>8.602325267042627, :acceptable=>false}
# {:a_length=>7, :b_length=>6, :hammock_length=>9.219544457292887, :acceptable=>false}
# {:a_length=>7, :b_length=>7, :hammock_length=>9.899494936611665, :acceptable=>false}
# {:a_length=>7, :b_length=>8, :hammock_length=>10.63014581273465, :acceptable=>false}
# {:a_length=>8, :b_length=>1, :hammock_length=>8.06225774829855, :acceptable=>false}
# {:a_length=>8, :b_length=>2, :hammock_length=>8.246211251235321, :acceptable=>false}
# {:a_length=>8, :b_length=>3, :hammock_length=>8.54400374531753, :acceptable=>false}
# {:a_length=>8, :b_length=>4, :hammock_length=>8.94427190999916, :acceptable=>false}
# {:a_length=>8, :b_length=>5, :hammock_length=>9.433981132056603, :acceptable=>false}
# {:a_length=>8, :b_length=>6, :hammock_length=>10.0, :acceptable=>false}
# {:a_length=>8, :b_length=>7, :hammock_length=>10.63014581273465, :acceptable=>false}
# {:a_length=>8, :b_length=>8, :hammock_length=>11.313708498984761, :acceptable=>false}
# {:a_length=>9, :b_length=>1, :hammock_length=>9.055385138137417, :acceptable=>false}
# {:a_length=>9, :b_length=>2, :hammock_length=>9.219544457292887, :acceptable=>false}
# {:a_length=>9, :b_length=>3, :hammock_length=>9.486832980505138, :acceptable=>false}
# {:a_length=>9, :b_length=>4, :hammock_length=>9.848857801796104, :acceptable=>false}
# {:a_length=>9, :b_length=>5, :hammock_length=>10.295630140987, :acceptable=>false}
# {:a_length=>9, :b_length=>6, :hammock_length=>10.816653826391969, :acceptable=>false}
# {:a_length=>9, :b_length=>7, :hammock_length=>11.40175425099138, :acceptable=>false}
# {:a_length=>9, :b_length=>8, :hammock_length=>12.041594578792296, :acceptable=>false}
# {:a_length=>10, :b_length=>1, :hammock_length=>10.04987562112089, :acceptable=>false}
# {:a_length=>10, :b_length=>2, :hammock_length=>10.198039027185569, :acceptable=>false}
# {:a_length=>10, :b_length=>3, :hammock_length=>10.44030650891055, :acceptable=>false}
# {:a_length=>10, :b_length=>4, :hammock_length=>10.770329614269007, :acceptable=>false}
# {:a_length=>10, :b_length=>5, :hammock_length=>11.180339887498949, :acceptable=>false}
# {:a_length=>10, :b_length=>6, :hammock_length=>11.661903789690601, :acceptable=>false}
# {:a_length=>10, :b_length=>7, :hammock_length=>12.206555615733702, :acceptable=>false}
# {:a_length=>10, :b_length=>8, :hammock_length=>12.806248474865697, :acceptable=>false}
# {:a_length=>11, :b_length=>1, :hammock_length=>11.045361017187261, :acceptable=>false}
# {:a_length=>11, :b_length=>2, :hammock_length=>11.180339887498949, :acceptable=>false}
# {:a_length=>11, :b_length=>3, :hammock_length=>11.40175425099138, :acceptable=>false}
# {:a_length=>11, :b_length=>4, :hammock_length=>11.704699910719626, :acceptable=>false}
# {:a_length=>11, :b_length=>5, :hammock_length=>12.083045973594572, :acceptable=>false}
# {:a_length=>11, :b_length=>6, :hammock_length=>12.529964086141668, :acceptable=>false}
# {:a_length=>11, :b_length=>7, :hammock_length=>13.038404810405298, :acceptable=>false}
# {:a_length=>11, :b_length=>8, :hammock_length=>13.601470508735444, :acceptable=>false}
# {:a_length=>12, :b_length=>1, :hammock_length=>12.041594578792296, :acceptable=>false}
# {:a_length=>12, :b_length=>2, :hammock_length=>12.165525060596439, :acceptable=>false}
# {:a_length=>12, :b_length=>3, :hammock_length=>12.36931687685298, :acceptable=>false}
# {:a_length=>12, :b_length=>4, :hammock_length=>12.649110640673518, :acceptable=>false}
# {:a_length=>12, :b_length=>5, :hammock_length=>13.0, :acceptable=>false}
# {:a_length=>12, :b_length=>6, :hammock_length=>13.416407864998739, :acceptable=>false}
# {:a_length=>12, :b_length=>7, :hammock_length=>13.892443989449804, :acceptable=>false}
# {:a_length=>12, :b_length=>8, :hammock_length=>14.422205101855956, :acceptable=>false}
# There are 14 hammock configurations you may find suitable. Good day.
