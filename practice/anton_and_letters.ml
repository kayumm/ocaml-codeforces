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
 
let () =
  let count, str = 0, read_line () in
  let res = str
    |> str_to_lst
    |> Chars.of_list
    |> Chars.remove ',' 
    |> Chars.remove ' ' 
    |> Chars.remove '{' 
    |> Chars.remove '}' 
  in
  Chars.fold (fun _ a -> a + 1) res count |> print_int
