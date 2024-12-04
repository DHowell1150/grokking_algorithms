# VOCAB
1.  **Recursive** When a function calls itself.
2.  **Base Case**: When the function doesn't call itself.
    - Creating an "out" or conditional so as not to create an infinite loop.  
    - eg: "if num > 0" do this...
3.  **Recursive Case**:  The function calls itself.  
4. **Call Stack**: Similar to an array but a *list of functions* opposed to elements
5. **Factorial**: 
6. 


# NOTES
1. Recursion:
    - It's easy to create an infinite loop.  This is where you add in a *Base Case*
      - eg countdown method.  If you don't create a conditional "if num > 0" it goes into infinite negatives
2. Accidental loop, add a base case.  
    - error: "stack overflow"
3. Call Stack:
    - A list of functions
    - Only read the top-most item then it's taken off the list. 
    - 2 Actions: 
      1.  `push` 
      2.  `pop`
    - **FIFO**: "First in, Last out"
    - Used to save the variables for multiple functions. 
    - Downside: Each layer or function is saved and this can take up a lot of memory

    3B. Factorial 
    ```
      5!  (or fact(5)) = 5x4×3×2×1=
      4! = 4!=4×3×2×1=120
      ```
      ```ruby 
      def fact(x) #call fstack b
        if x == 1 #base case
          1
        else 
          x * fact(x-1) #recursive case
        end
      end
      ```
