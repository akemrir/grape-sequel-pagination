module Grape::SequelPagination
  module Helpers
    def paginate(*args)
      Grape::SequelPagination::Paginator.paginate(self, *args)
    end
  end
end
