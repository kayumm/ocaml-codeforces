let str_to_lst str =
  let counter = String.length str in
  let rec aux str count acc =
    match count with
    | 0 -> acc
    | _ -> aux str (count - 1) (str.[count - 1] :: acc)
  in
  aux str counter []
 
let () =
  let input = Scanf.scanf "%s" (fun x -> x) in
  input
  |> str_to_lst 
  |> List.filter (fun x -> x <> '+')
  |> List.sort compare
  |> List.fold_left (fun acc elt -> '+' :: elt :: acc) []
  |> List.tl
  |> List.rev
  |> List.iter (Printf.printf "%c") 
