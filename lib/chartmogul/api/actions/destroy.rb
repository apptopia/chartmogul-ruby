module ChartMogul
  module API
    module Actions
      module Destroy
        def destroy!
          handling_errors do
            connection.delete("#{resource_path.apply(self.instance_attributes)}/#{uuid}")
          end
          true
        end
      end
    end
  end
end
