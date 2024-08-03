module Char = struct
  type t = char
  let compare = compare
end
module Chars = Set.Make(Char)
 
let str_to_lst str =
  let counter = String.length str in
  let rec aux str count acc =
    match count with
    | 0 -> acc
    | _ -> aux str (count - 1) (str.[count - 1] :: acc)
  in
  aux str counter []
 
let main () =
  let inp = read_line () |> str_to_lst |> Chars.of_list in
  if Chars.fold (fun _ acc -> acc + 1) inp 0 mod 2 = 0 then print_endline "CHAT WITH HER!"
  else print_endline "IGNORE HIM!"
 
let _ = main ()
