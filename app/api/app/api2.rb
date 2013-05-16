require 'grape'
#require 'grape-swagger'


module App

  class API2 < Grape::API#::BaseController   #Api::V1::BaseController
    mount App::API


#add_swagger_documentation :base_path => 'http://apple.lvh.me:3000/api'

end
end