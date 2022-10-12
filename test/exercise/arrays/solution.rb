module Exercise
  module Arrays
    class << self
      def replace(array)
        def max(array)
          max = array[0]
          for i in array do
            max = i if max < i
          end
          max
        end

        def replace_with_max(array, max)
          array.map! { |el| el.positive? ? max : el }
          array
        end
        replace_with_max(array, max(array))
      end

      def search(array, query)
        def bsearch(arr, target, low, high)
          if high < low
            -1
          else
            mid = ((low + high) / 2)
            if arr[mid] == target
              mid
            elsif target > arr[mid]
              bsearch(arr, target, (low + 1), high)
            else
              bsearch(arr, target, low, (high - 1))
            end
          end
        end
        bsearch(array, query, 0, array.length - 1)
      end
    end
  end
end
