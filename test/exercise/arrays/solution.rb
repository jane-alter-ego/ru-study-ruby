module Exercise
  module Arrays
    class << self
      def max(array)
        max = array[0]
        array.each { |item| max = item if max < item }
        max
      end

      def replace(array)
        array.map { |item| item.positive? ? max(array) : item }
      end

      def search(array, query, low = 0, high = array.length - 1)
        high < low ? (return -1) : (mid = ((low + high) / 2))
        if array[mid] == query
          mid
        elsif query > array[mid]
          search(array, query, (low + 1), high)
        else
          search(array, query, low, (high - 1))
        end
      end
    end
  end
end
