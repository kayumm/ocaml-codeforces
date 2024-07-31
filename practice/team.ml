let input = read_int () 
let solve inp =
  let rec aux inp acc = match inp with
    | 0 -> acc
    | _ ->
        let a, b, c = Scanf.scanf " %d %d %d" @@ fun x y z -> x, y, z in
        let new_sum = if a+b+c > 1 then acc+1 else acc in
        aux (inp - 1) new_sum
  in
  aux inp 0
 
let () = solve input |> print_int
