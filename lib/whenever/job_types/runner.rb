module Whenever
  module JobTypes
    class Runner < Default
      def output
        path_required
        %Q(#{File.join(@path, 'script', 'runner')} -e #{@environment} "#{task}")
      end
    end
  end
end
