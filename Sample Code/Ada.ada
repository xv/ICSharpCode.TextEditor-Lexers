-- Linked Stack Client
-- A simple client of the Int_Stack package.
-- http://sandbox.mc.edu/~bennet/ada/examples/l_stack_user_adb.html

with Gnat.Io; use Gnat.Io;
with L_Stack; use L_Stack;

procedure L_Stack_User is
   -- Here is a stack.  We can use the name of the private type,
   S, T: Int_Stack;

   -- Here's an exciting integer.
   Exciting: Integer;
begin
   -- Read in some integers, and push 'em
   loop
      Put("> ");
      Get(Exciting);
      exit when Exciting = -1;
      Push(S, Exciting);
      Push(T, Exciting);
   end loop;

   if S = T then
      Put_Line("Gee, they're equal.");
   end if;

   Push(T, 34);
   if S = T then
      Put_Line("Ha ha!  Found a bug!");
   end if;

   -- Pop 'em and print 'em
   while not Empty(S) loop
      Pop(S, Exciting);
      Put(Exciting);
      exit when Empty(S);
      Put(" ");
   end loop;
   New_Line;

   if S /= T then
      Put_Line("Gosh, they're not equal anymore.");
   end if;
end L_Stack_User;
