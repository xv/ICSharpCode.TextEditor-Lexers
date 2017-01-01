/* Authoring a Simple Multithreaded Component 
** https://msdn.microsoft.com/en-us/library/48cfdff6.aspx
*/

// This method will calculate the value of a number minus 1 factorial
// (varFact2-1!).
public void FactorialMinusOne()
{
   double varTotalAsOfNow = 0;
   double varResult = 1;
   // Performs a factorial calculation on varFact2 - 1.
   for (int varX = 1; varX <= varFact2 - 1; varX++)
   {
      varResult *= varX;
      // Increments varTotalCalculations and keeps track of the current 
      // total as of this instant.
      varTotalCalculations += 1;
      varTotalAsOfNow = varTotalCalculations;
   }
   // Signals that the method has completed, and communicates the 
   // result and a value of total calculations performed up to this 
   // point.
   FactorialMinusOneComplete(varResult, varTotalAsOfNow);
}

// This method will calculate the value of a number factorial.
// (varFact1!)
public void Factorial()
{
   double varResult = 1;
   double varTotalAsOfNow = 0;
   for (int varX = 1; varX <= varFact1; varX++)
   {
      varResult *= varX;
      varTotalCalculations += 1;
      varTotalAsOfNow = varTotalCalculations;
   }
   FactorialComplete(varResult, varTotalAsOfNow);
}

// This method will add two to a number (varAddTwo+2).
public void AddTwo()
{
   double varTotalAsOfNow = 0;  
   int varResult = varAddTwo + 2;
   varTotalCalculations += 1;
   varTotalAsOfNow = varTotalCalculations;
   AddTwoComplete(varResult, varTotalAsOfNow);
}

// This method will run a loop with a nested loop varLoopValue times.
public void RunALoop()
{
   int varX;
   double varTotalAsOfNow = 0;
   for (varX = 1; varX <= varLoopValue; varX++)
   {
    // This nested loop is added solely for the purpose of slowing down
    // the program and creating a processor-intensive application.
      for (int varY = 1; varY <= 500; varY++)
      {
         varTotalCalculations += 1;
         varTotalAsOfNow = varTotalCalculations;
      }
   }
   LoopComplete(varTotalAsOfNow, varLoopValue);
}
