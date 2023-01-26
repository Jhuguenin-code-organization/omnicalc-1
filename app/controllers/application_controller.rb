class ApplicationController < ActionController::Base
  #Square Form
  def blank_square_form

    render({:template=> "calculation_templates/square_form.html.erb"})
  end


  def calculate_square
    @num = params.fetch("elephant").to_f
    @square_of_num= @num * @num
    render({ :template=> "calculation_templates/square_results.html.erb" })
  end
#Random Form
  def blank_random_form

    render({:template=> "calculation_templates/random_form.html.erb"})
  end


  def calculate_random
    @lower= params.fetch("user_min").to_f
    @upper= params.fetch("user_max").to_f
    @result = rand(@lower...@upper)
   
    render({ :template=> "calculation_templates/random_results.html.erb" })
  end
#Square Root Form
  def blank_sqrt_form
    
    render({:template=> "calculation_templates/square_root_form.html.erb"})
  end

  def calculate_sqrt
    @num = params.fetch("user_sqrt").to_f
    @result = @num**(0.5)

    render({:template=> "calculation_templates/square_root_results.html.erb"})
  end
#Payment Form
def blank_payment_form
    
  render({:template=> "calculation_templates/payment_form.html.erb"})
end

def calculate_payment
  @apr= params.fetch("user_apr").to_f/100
  @years= params.fetch("user_years").to_f
  @principal = params.fetch("user_principal").to_f
  @payment=((@apr/12)* (@principal))/(1-(1+(@apr/12))**(-12*@years))
  render({:template=> "calculation_templates/payment_results.html.erb"})
end
end
