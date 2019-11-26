module Inmetrics
  module Home
    class Home < SitePrism::Page
      set_url CONFIG_DATA['urls']['web']
      element :h2_carreiras_session, '#carreiras'
      element :a_vagas, '#carreiras .btn'
      element :div_quem_somos, '#quem-somos'
      element :a_produtos, '#quem-somos .btn'
    end
  end
end