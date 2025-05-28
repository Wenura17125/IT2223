# MATLAB Code Repository - Day 06

[![MATLAB](https://img.shields.io/badge/MATLAB-Script-blue?style=for-the-badge&logo=mathworks&logoColor=white)](https://www.mathworks.com/products/matlab.html)
[![Code Quality](https://img.shields.io/badge/Code%20Quality-A-brightgreen?style=for-the-badge)]() 
[![Date](https://img.shields.io/badge/Date-04.21.2024-orange?style=for-the-badge)]()

> 📚 A comprehensive collection of MATLAB scripts demonstrating time complexity and algorithm performance measurement.

## 📋 Course Overview

This repository contains practical exercises and implementations for the MATLAB course. Each code example demonstrates different aspects of algorithm performance and time measurement using MATLAB's timing functions.

## 🗓️ Day 06 Content

### 🎯 Programming Exercises

#### 1. Basic Conditional Time Measurement

```matlab
n=5;

tic;

if n==5
    disp('n is 5');
else
    disp('n is not 5');
end

toc;
```

**Explanation:**
- Uses the `tic` and `toc` functions to measure execution time
- Demonstrates a simple conditional statement
- Shows how to time even simple operations in MATLAB
- Output displays the execution time in seconds

#### 2. Linear Search Algorithm

```matlab
x=[3,5,7,9,11,13];

y=3;

n=length(x);

found=false;

tic;

for i=1:n
    if x(i)==y
        found=true;
        index=i;
        break;
    end
end

if found 
    fprintf("The target element found at index:%d\n",index);
else
    fprintf("element not found\n");
end

elapsedTime=toc; 

fprintf('Elapsed time:%f seconds\n',elapsedTime);
```

**Explanation:**
- Implements a linear search algorithm to find an element in an array
- Uses a for loop to iterate through each element
- Breaks the loop when the target element is found
- Measures and reports the execution time of the search operation

#### 3. Binary Search Implementation

```matlab
a=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];

n=length(a);

target=3;

low=1;

high=n;

mid=(low+high)/2;

found=false;

for i=1:n
    if a(mid)==target
        found=true;
        index=i;
        break;
    end
    
    if target<a(mid)
        high=mid-1;
    else
        low=mid+1;
    end
end

if found
    fprintf('target enement is at index:%d\n',index);
else
    fprintf('elemet not found\n');
end
```

**Explanation:**
- Implements a binary search algorithm on a sorted array
- Uses the divide and conquer approach to efficiently find the target
- Demonstrates how to narrow down the search range in each iteration
- Note: This implementation has some issues as it doesn't update `mid` in the loop

#### 4. Loop Performance Measurement

```matlab
n=10000;

tic; % start timing

for i= 1:n
    disp(i);
end

elapsedTime=toc; %End timing and store elaspsed time

fprintf('Elapsed time:%f seconds\n',elapsedTime);
```

**Explanation:**
- Measures the time taken to display 10,000 numbers
- Demonstrates how to time a loop operation
- Shows the impact of I/O operations on execution time
- Useful for understanding performance bottlenecks

### 📊 Implementation Results

| Code Example | Description | Output |
|---------|-------------|--------|
| Code 01 | Basic Conditional Timing | ![1](https://github.com/user-attachments/assets/72b00096-b509-451f-86aa-6c0713b5feb9) |
| Code 02 | Linear Search | ![2](https://github.com/user-attachments/assets/274eff6d-4eb9-430d-96c0-c30cf3800ce7) |
| Code 03 | Binary Search | ![3](https://github.com/user-attachments/assets/b72f1624-720e-470c-afee-339bf7340797) |
| Code 04 | Loop Performance | ![4](https://github.com/user-attachments/assets/2dbc45f3-ae4b-44d7-9df7-d18bd57631ef) |

### 🔍 Technical Notes

- All implementations are in MATLAB
- Each program demonstrates different algorithm concepts:
  - Time complexity measurement using tic/toc
  - Search algorithms (linear and binary)
  - Loop performance analysis
  - Conditional execution timing

## How to Run the Scripts
1. Open MATLAB.
2. Copy and paste the desired script into the MATLAB command window or save it as a `.m` file and run it.
3. Observe the output in the command window.

---

<div align="center">

📖 **Learning Path** | 🛠️ **Practical Examples** | 📊 **Visual Outputs**

</div>
