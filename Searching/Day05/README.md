# MATLAB Code Repository - Day 05

[![MATLAB](https://img.shields.io/badge/MATLAB-Script-blue?style=for-the-badge&logo=mathworks&logoColor=white)](https://www.mathworks.com/products/matlab.html)
[![Code Quality](https://img.shields.io/badge/Code%20Quality-A-brightgreen?style=for-the-badge)]() 
[![Date](https://img.shields.io/badge/Date-04.21.2024-orange?style=for-the-badge)]()

> 📚 A comprehensive collection of MATLAB scripts implementing interactive applications with user input and visualization.

## 📋 Course Overview

This repository contains practical exercises and implementations for the MATLAB course. Each activity demonstrates different aspects of MATLAB programming including user interfaces, data visualization, and control structures.

## 🗓️ Day 05 Content

### 🎯 Programming Exercises

#### 1. ATM Simulation

```matlab
AccBalance=1000;

while true
    fprintf('\nATM Menu:\n');
    fprintf('1. Deposit\n');
    fprintf('2. Withdraw\n');
    fprintf('3. Balance Inquiry\n');
    fprintf('4. Exit\n');

    select = input('Please select an option(1-4): ');

    switch select
    case 1
        DepositAmount = input('Enter the deposit amount: ');
        if DepositAmount>0
            AccBalance = AccBalance + DepositAmount;
            fprintf('You have deposited %.2f. Your new account balance is %.2f.\n', DepositAmount, AccBalance');
        else
            fprintf('Invalid amount, please enter the positive value.');
        end

    case 2
        WithdrawAmount = input('Enter the withdraw amount: ');
        if WithdrawAmount>0
            if WithdrawAmount<=AccBalance
            AccBalance = AccBalance - WithdrawAmount;
            fprintf('You have withdrawn %.2f. Your new account balance is %.2f.\n', WithdrawAmount, AccBalance);
            else
                fprintf('You cannot withdraw more than your current balance of %.2f.\n', AccBalance);
            end
        else
            fprintf('Invalid amount! Please enter a positive value.');
        end

    case 3
        fprintf('Your current balance is: %.2f\n', AccBalance);
            
    case 4
        fprintf('Thank you for using the ATM.');
        break; 
            
   otherwise
        fprintf('Invalid option. Please select a valid option (1-4).');

   end
end
```

**Explanation:**
- Simulates an ATM interface with a menu system
- Implements deposit, withdrawal, and balance inquiry functions
- Includes input validation for transaction amounts
- Uses a while loop to keep the program running until the user exits

#### 2. Student Grade Calculator

```matlab
marks = zeros(1, 5);

for i = 1:5
    marks(i) = input(['Enter the mark for student ', num2str(i), ' (out of 100): ']);
    
    if marks(i) >= 90 && marks(i) <= 100
        grade = 'A';
    elseif marks(i) >= 80 && marks(i) < 90
        grade = 'B';
    elseif marks(i) >= 70 && marks(i) < 80
        grade = 'C';
    elseif marks(i) >= 60 && marks(i) < 70
        grade = 'D';
    else
        grade = 'F';
    end
    disp(['Student ', num2str(i), ' received a grade of: ', grade]);
end

while true
    disp('Choose an option:');
    disp('1. Show all marks as a bar chart');
    disp('2. Show average marks');
    disp('3. Exit');
    
    choice = input('Enter your choice (1/2/3): ');
    
    switch choice
        case 1 
            bar(marks); 
            title('Marks of 5 Students');
            xlabel('Student');
            ylabel('Marks');
            grid on;
        
        case 2
            avg_marks = mean(marks); 
            fprintf('The average mark of the students is: %2f\n', avg_marks);

        case 3
            fprintf('Thank you , Exiting program ');
            break;

        otherwise
            fprintf('Invalid choise.Please enter the valid option.');
    end
end
```

**Explanation:**
- Collects marks for 5 students and assigns letter grades
- Provides a menu for data visualization and analysis
- Implements a bar chart visualization of student marks
- Calculates and displays the average mark

#### 3. Student Club Voting System

```matlab
numVoters = input('Enter the total number of voters: ');

votes = zeros(1,4);

fprintf('Voting Menu:\n');
fprintf('1. Candidate A\n');
fprintf('2. Candidate B\n');
fprintf('3. Candidate C\n');
fprintf('4. Candidate D\n');

for i = 1:numVoters
    vote = input(sprintf('Voter %d, enter your choice (1-4): ', i));
    switch vote
        case 1
            votes(1) = votes(1) + 1;
        case 2
            votes(2) = votes(2) + 1;
        case 3
            votes(3) = votes(3) + 1;
        case 4
            votes(4) = votes(4) + 1;
        otherwise
            fprintf('Invalid vote!\n');
    end
end

fprintf('\nVoting Results:\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));

[maxVotes, winnerIndex] = max(votes);
fprintf('Winner: Candidate %c\n', char(winnerIndex + 64));

while true
    fprintf('\nResult Visualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot (creative visualization)\n');
    fprintf('4. Exit\n');

    choice = input('Enter your choice (1-4): ');

    switch choice
        case 1
            figure;
            bar(votes);
            title('Vote Counts');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 2
            figure;
            pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Vote Distribution');
        case 3
            figure;
            scatter(1:4, votes, 100, 'filled');
            title('Scatter Plot of Votes');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticks(1:4);
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 4
            fprintf('Exiting visualization menu.\n');
            break;
        otherwise
            fprintf('Invalid choice! Please enter a valid option.\n');
    end
end
```

**Explanation:**
- Creates a voting system for student club elections
- Collects votes from multiple voters for four candidates
- Determines and announces the winner
- Provides multiple visualization options for the voting results

### 📊 Implementation Results

#### Activity 1: ATM Simulation

![Activity1](https://github.com/user-attachments/assets/6b89f598-5e3b-4bc2-af44-444257730a6c)

#### Activity 2: Student Grade Calculator

![Activity2](https://github.com/user-attachments/assets/cfa2f7fb-2a2a-48b4-9a2a-6f3de6ff1de9)

![Activity2_barchart](https://github.com/user-attachments/assets/d3c857ed-72dd-48e8-93c2-866acc9e8fab)

#### Activity 3: Student Club Voting System

![1](https://github.com/user-attachments/assets/5646d0b9-d047-4ea4-9c6a-63be85d70f38)

![2](https://github.com/user-attachments/assets/4e731e42-03cf-49dd-8697-b90b11809670)

![BarChart](https://github.com/user-attachments/assets/277464f8-3aab-4ef6-8da1-9b9e22a1af0b)

![PieChart](https://github.com/user-attachments/assets/edd447f8-4065-4447-8515-b3b4a5fd0e31)

![ScatterPlot](https://github.com/user-attachments/assets/26bbba62-1954-4a8e-b1e2-722748c410e3)

### 🔍 Technical Notes

- All implementations are in MATLAB
- Each program demonstrates different programming concepts:
  - User input and validation
  - Control structures (loops, conditionals, switch statements)
  - Data visualization techniques
  - Menu-driven interfaces

## How to Run the Scripts
1. Open MATLAB.
2. Copy and paste the desired script into the MATLAB command window or save it as a `.m` file and run it.
3. Observe the output in the command window.

---

<div align="center">

📖 **Learning Path** | 🛠️ **Practical Examples** | 📊 **Visual Outputs**

</div>





