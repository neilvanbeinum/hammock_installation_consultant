ideal_length = Integer(ARGV[0])

raise ArgumentError, "No ideal hammock length supplied" unless ideal_length

RAIL_LENGTH_A = 12
RAIL_LENGTH_B = 8

class HammockConsultant
  def initialize(ideal_length, rail_length_1, rail_length_2)
    @ideal_length = ideal_length
    @rail_length_1 = rail_length_1
    @rail_length_2 = rail_length_2
  end

  def combinations
    rail_a_point_distances =  (1..@rail_length_1).to_a
    rails_b_point_distances = (1..@rail_length_2).to_a

    all_combinations = rail_a_point_distances.product(rails_b_point_distances)

    acceptable_lengths = (@ideal_length-1..@ideal_length+1)

    answers = {
      perfect_lengths: 0,
      acceptable_lengths: 0,
      total: all_combinations.length
    }

    all_combinations.each do |a_length, b_length|
      hammock_length = Math.sqrt(a_length**2 + b_length**2)

      if hammock_length == @ideal_length
        answers[:perfect_lengths] += 1
      else
        answers[:acceptable_lengths] += 1 if acceptable_lengths.cover? hammock_length
      end
    end

    answers
  end
end

consultant = HammockConsultant.new(ideal_length, RAIL_LENGTH_A, RAIL_LENGTH_B)
answers = consultant.combinations

puts "Out of #{ answers[:total] } possible combinations:"
puts "There are #{ answers[:perfect_lengths] } hammock configurations for your ideal length."
puts "There are also #{ answers[:acceptable_lengths] } other hammock configurations that are suboptional but which you may nonetheless find acceptable. Good day."
