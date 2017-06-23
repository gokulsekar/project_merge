-module(flames).
-import(string,[len/1]).
-export([main/0,partha/2,new/3]).

count(P) ->
X=len(P),
io:format("the length of the string is ~p ~n",[X]),
Q=P,
io:format("Q is ~p ~n",[Q]),
Q1=lists:usort(P),
io:format("the before reverse is ~s ~n",[Q1]),
Q2=lists:reverse(Q1),
io:format("the remove duplicate is ~s ~n",[Q2]),
partha(Q2,Q).

partha([],_) ->
io:format("~n empty list  ~n");

partha([F | R],Q) ->
    Z=0,
    new(F,Q,Z),
	partha(R,Q).
	
	
new(F1,[],Z2) ->
io:format("~p~c ~n",[Z2,F1]);

	
new(F,[A | B],Z1) ->
if
   F=:=A ->
      new(F,B,Z1+1);
	  
   F=/=A ->
	  new(F,B,Z1);
	  
   true ->
      io:format("kabali da ~n")
	  
end.  

main() ->
{ok,[P]}=io:fread("","~s"),
count(P).