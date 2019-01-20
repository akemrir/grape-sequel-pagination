require 'grape'

require 'grape/sequel-pagination/version'

module Grape
  module SequelPagination
    autoload :Configuration, 'grape/sequel-pagination/configuration'
    autoload :Extensions,    'grape/sequel-pagination/extensions'
    autoload :Helpers,       'grape/sequel-pagination/helpers'
    autoload :Paginator,     'grape/sequel-pagination/paginator'
    autoload :LinkHeader,    'grape/sequel-pagination/link_header'
    require 'grape/validations/validations'

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.configure
      yield configuration
    end

    Grape::API.send :extend, Grape::SequelPagination::Extensions
    Grape::Endpoint.send :include, Grape::SequelPagination::Helpers
  end
end
