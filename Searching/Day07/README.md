# MATLAB Code Repository - Day 07

[![MATLAB](https://img.shields.io/badge/MATLAB-Script-blue?style=for-the-badge&logo=mathworks&logoColor=white)](https://www.mathworks.com/products/matlab.html)
[![Code Quality](https://img.shields.io/badge/Code%20Quality-A-brightgreen?style=for-the-badge)]() 
[![Date](https://img.shields.io/badge/Date-04.21.2024-orange?style=for-the-badge)]()

> 📚 A comprehensive collection of MATLAB scripts demonstrating search algorithms and sorting techniques with performance measurements.

## 📋 Course Overview

This repository contains practical exercises and implementations for the MATLAB course. Each example demonstrates different aspects of MATLAB programming including search algorithms, sorting techniques, and performance measurement.

## 🗓️ Day 07 Content

### 🎯 Programming Exercises

#### 1. Binary Search with Performance Measurement

**Explanation:**
- Creates an array with 1000 numbers
- Implements binary search algorithm to find a target value
- Uses tic/toc functions to measure execution time
- Displays search result and elapsed time

```matlab
arr = 1:1000; 
target = 750;
tic;
low = 1;
high = length(arr);
found = false;
while low <= high
    mid = floor((low + high) / 2);
    if arr(mid) == target
        found = true;
        break;
    elseif arr(mid) < target
        low = mid + 1;
    else
        high = mid - 1;
    end
end
elapsed_time = toc;
if found
    fprintf('Target found at index %d\n', mid);
else
    fprintf('Target not found\n');
end
fprintf('Elapsed time: %.6f seconds\n', elapsed_time);
```

**Output:**

![1](https://github.com/user-attachments/assets/21bd8eeb-9162-40be-a09e-2f6d1c8e850c)

#### 2. Binary Search vs. Linear Search Comparison

**Explanation:**
- Implements both binary search and linear search algorithms
- Measures and compares execution time for both methods
- Demonstrates the efficiency difference between the two search techniques

```matlab
arr = 1:1000;
target = 750;
tic;
low = 1;
high = length(arr);
foundBinary = false;
while low <= high
    mid = floor((low + high) / 2);
    if arr(mid) == target
        foundBinary = true;
        break;
    elseif arr(mid) < target
        low = mid + 1;
    else
        high = mid - 1;
    end
end
binary_time = toc;

tic;
foundLinear = false;
for i = 1:length(arr)
    if arr(i) == target
        foundLinear = true;
        break;
    end
end
linear_time = toc;

fprintf('Binary Search Time: %.6f seconds\n', binary_time);
fprintf('Linear Search Time: %.6f seconds\n', linear_time);
if foundBinary
    fprintf('Target found using Binary Search\n');
else
    fprintf('Target not found using Binary Search\n');
end
if foundLinear
    fprintf('Target found using Linear Search\n');
else
    fprintf('Target not found using Linear Search\n');
end
```

**Output:**

![2](https://github.com/user-attachments/assets/611e48d6-ba89-4999-8b13-55c251925ca9)

#### 3. Selection Sort Implementation

**Explanation:**
- Implements the selection sort algorithm as a MATLAB function
- Sorts an array by repeatedly finding the minimum element
- Demonstrates array manipulation and function creation in MATLAB

```matlab
function sortedArray = selectionSort(arr)
    n = length(arr);
    for i = 1:n-1
        minIndex = i;
        for j = i+1:n
            if arr(j) < arr(minIndex)
                minIndex = j;
            end
        end
        temp = arr(i);
        arr(i) = arr(minIndex);
        arr(minIndex) = temp;
    end
    sortedArray = arr;
end

arr = [64, 25, 12, 22, 11];
sortedArr = selectionSort(arr);
disp('Sorted Array:');
disp(sortedArr);
```

**Output:**

![3](https://github.com/user-attachments/assets/78769e7c-14ff-4834-aa48-3bd110de61e5)

### 📊 Implementation Results

| Exercise | Description | Output |
|---------|-------------|--------|
| Binary Search | Search with time measurement | ![1](https://github.com/user-attachments/assets/21bd8eeb-9162-40be-a09e-2f6d1c8e850c) |
| Search Comparison | Binary vs. Linear search | ![2](https://github.com/user-attachments/assets/611e48d6-ba89-4999-8b13-55c251925ca9) |
| Selection Sort | Array sorting algorithm | ![3](https://github.com/user-attachments/assets/78769e7c-14ff-4834-aa48-3bd110de61e5) |

### 🔍 Technical Notes

- All implementations are in MATLAB
- Each program demonstrates different programming concepts:
  - Search algorithms (binary and linear)
  - Sorting techniques (selection sort)
  - Performance measurement using tic/toc
  - Algorithm efficiency comparison

## How to Run the Scripts
1. Open MATLAB.
2. Copy and paste the desired script into the MATLAB command window or save it as a `.m` file and run it.
3. Observe the output in the command window.

---

<div align="center">

📖 **Learning Path** | 🛠️ **Practical Examples** | 📊 **Visual Outputs**

</div>


