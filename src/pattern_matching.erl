-module(pattern_matching).

-compile(export_all).
-record(person, {name = "", age, phone, dict}).

make_hacker_without_phone(Name, Age) when Age >= 18 ->
    #person{
      name = Name,
      age = Age,
      dict = [
        {computer_knowledge, excellent},
        {drinks, coke}
      ]
    }.

%% Пример pattern-matching аргументов
print(#person{name = Name, age = Age, phone = Phone, dict = Dict}) when Age >= 18, Age =< 65, Name /= "" ->
  io:format("Name: ~s, Age: ~w, Phone: ~w ~n"
  "Dictionary: ~w.~n", [Name, Age, Phone, Dict]).

%% Пример pattern-matching аргументов с использованием guard для проверки условия
birthday(P) when is_record(P, person) ->
  P#person{age = P#person.age + 1}.

register_two_hackers() ->
  Hacker1 = make_hacker_without_phone("Joe", 29),
  OldHacker = birthday(Hacker1),

  print(Hacker1),
print(OldHacker).
