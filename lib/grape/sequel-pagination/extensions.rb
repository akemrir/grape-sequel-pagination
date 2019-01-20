module Grape::SequelPagination
  module Extensions
    def paginate(options = {})
      options.reverse_merge!(per_page: 30)
      params do
        optional :page,
          type: Integer,
          desc: 'Page offset to fetch.',
          default: 1,
          pagination_page: true
        optional :per_page,
          type: Integer,
          desc: 'Number of results to return per page.',
          default: options[:per_page]
      end
    end
  end
end


