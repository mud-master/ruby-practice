def bubble_sort(arr)
    
    n_switches = -1

    until n_switches == 0
        n_switches = 0
        arr.each_with_index do |val, idx|
            
            if (idx < arr.length - 1 && arr[idx] > arr[idx + 1])
                old_var = arr[idx]
                arr[idx] = arr[idx + 1]
                arr[idx + 1] = old_var
                p arr
                n_switches += 1
            end
        end
    end

end

bubble_sort([4,3,78,2,0,2, 85, 3])