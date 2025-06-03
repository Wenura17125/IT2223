function sorted = quickSort(arr)
    if numel(arr) <= 1
        sorted = arr;
        return;
    end
    
    pivot = arr(1);
    left = arr(arr < pivot);
    equal = arr(arr == pivot);
    right = arr(arr > pivot);
    
    sorted = [quickSort(left), equal, quickSort(right)];
end
