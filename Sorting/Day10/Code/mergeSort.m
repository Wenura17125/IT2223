function sortedArray = mergeSort(arr)
    if numel(arr) <= 1
        sortedArray = arr;
        return;
    end

    mid = floor(numel(arr) / 2);

    left = mergeSort(arr(1:mid));
    right = mergeSort(arr(mid+1:end));

    sortedArray = merge(left, right);
end

function merged = merge(left, right)
    merged = [];
    i = 1; j = 1;

    while i <= numel(left) && j <= numel(right)
        if left(i) <= right(j)
            merged(end+1) = left(i);
            i = i + 1;
        else
            merged(end+1) = right(j);
            j = j + 1;
        end
    end

    % Append remaining elements (if any)
    if i <= numel(left)
        merged = [merged, left(i:end)];
    end
    if j <= numel(right)
        merged = [merged, right(j:end)];
    end
end
