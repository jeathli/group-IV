class Admin::BaseController < ApplicationController
  layout 'admin'
  http_basic_authenticate_with name: ENV.fetch('ADMIN_USER_NAME', 'admin'), password: ENV.fetch('ADMIN_PASSWORD', '1234')
end
