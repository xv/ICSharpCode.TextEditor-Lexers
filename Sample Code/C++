/* Pascal's Triangle
** Submitted by Ali Nawkhas Murad
** http://www.cprogramming.com/snippets/source-code/pascals-triangle
*/

#include <iostream>
#include <iomanip>

using namespace std;

int** comb(int** a , int row , int col)
{
   int mid = col/2;
        //clear matrix
         for( int i = 0 ; i < row ; i++)
         for( int j = 0 ; j < col ; j++)
                a[i][j] = 0;
                a[0][mid] = 1; //put 1 in the middle of first row
    //build up Pascal's Triangle matrix
     for( int i = 1 ; i < row ; i++)
        {
          for( int j = 1 ; j < col - 1 ; j++)
               a[i][j] = a[i-1][j-1] + a[i-1][j+1];
        }
   return a;
}
void disp(int** ptr, int row, int col)
{
  cout << endl << endl;
    for ( int i = 0 ; i < row ; i++)
        {
        for ( int j = 0 ; j < col ; j++)
            {
                if( ptr[i][j] == 0)
                cout << "   ";
                else
                cout << setw(4) << right << ptr[i][j];
            }
            cout << endl;
        }
    cout << endl << endl;
}
int main()
{
    int **ptr, m, n;
    cout << "\nEnter number of rows to draw Pascal's Triangle: ";
    cin >> m;
    n = 2 * m + 1; //column = 2 * row + 1
 
    ptr = new int*[m];
    for( int i = 0 ; i < m ; i++)
        ptr[i] = new int[n];
 
        ptr = comb(ptr, m, n);//calling function for array creation
 
        disp(ptr, m, n);//calling function for array displaying.
 
    return 0;
}
/*Programs output
******************
Enter number of rows to draw Pascal's Triangle: 9
 
 
                              1
                           1      1
                        1      2      1
                     1      3      3      1
                  1      4      6      4      1
               1      5     10     10      5      1
            1      6     15     20     15      6      1
         1      7     21     35     35     21      7      1
      1      8     28     56     70     56     28      8      1
 
Process returned 0 (0x0)   execution time : 2.996 s
Press any key to continue.
*/
