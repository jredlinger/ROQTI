require_relative '../lib/ROQTI'

describe InterestRates, "#gross_interest_rate_calculator" do
  it "should return the gross interest of the assets" do
    capital = 20
    total_interest = 75
    InterestRates.gross_interest_rate(total_interest, capital).should eq(total_interest.to_f / capital)
  end
end

describe InterestRates, "#basic_compound_interest_rate" do
  it "should return the basic compound interest of the assets" do
    capital = 20
    interest_rate = 0.10
    periods = 5
    InterestRates.basic_compound_interest_rate(capital, interest_rate, periods).should eq((capital.to_f * (1 + interest_rate) ** periods) - capital.to_f)
  end
end

describe InterestRates, "#effecive_compound_interest_rate" do
  it "should return the effective compound interest of the assets" do
    interest_rate = 0.10
    periods = 6
    InterestRates.effective_compound_interest_rate(interest_rate, periods).should eq(((1 + interest_rate.to_f) ** periods) - 1)
  end
end
  
describe InterestRates, "#effecive_compound_interest_rate" do
  it "should return the effective compound interest of the assets" do 
    amount_paid = 100000
    periods = 0.25
    interest_rate = 0.05
    InterestRates.present_value(amount_paid, periods, interest_rate).should eq(amount_paid.to_f / (1 + interest_rate) ** periods)
    end
end
    

