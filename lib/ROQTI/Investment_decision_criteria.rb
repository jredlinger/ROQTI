class InvestmentDecisionCriteria
  
  def self.rate_of_return(initial_price, current_price, income=0)
    return ((current_price.to_f - initial_price) + income) / initial_price
  end

  def self.time_of_return(initial_price, current_price)
    return (initial_price.to_f/ (current_price - initial_price))
  end

  def self.net_present_value(initial_investment, number_of_periods, interest_rate, cash_flow )
    npv = -initial_investment.to_f
    counter = (1..number_of_periods).inject { |t, sum|
      sum + cash_flow.to_f/ ( (1 + interest_rate) ** t )}
    return  npv + counter

  end

end


puts InvestmentDecisionCriteria.rate_of_return(350, 400)
puts InvestmentDecisionCriteria.time_of_return(350, 400)

puts InvestmentDecisionCriteria.net_present_value(0, 4, 0.05, -10)