let input = Scanf.scanf "%s" (fun x -> x)
 
let str_to_lst str =
  let counter = String.length str in
  let rec aux str count acc =
    match count with
    | 0 -> acc
    | _ -> aux str (count - 1) (str.[count - 1] :: acc)
  in
  aux str counter []
 
let cap_cnt inp = 
  let cnt inp =
    inp 
    |> str_to_lst
    |> List.fold_left (fun a e -> if e >= 'A' && e <= 'Z' then a+1 else a) 0 in  
  cnt inp
 
let low_cnt inp = 
  let cnt inp =
    inp 
    |> str_to_lst
    |> List.fold_left (fun a e -> if e >= 'a' && e <= 'z' then a+1 else a) 0 in 
  cnt inp
 
let () =
  if low_cnt input >= cap_cnt input then begin
    let result = ref "" in
    for i = 0 to String.length input - 1 do
      if input.[i] >= 'A' && input.[i] <= 'Z' then
        result := !result ^ Char.escaped @@ Char.chr @@ Char.code input.[i] + 32
      else 
        result := !result ^ Char.escaped input.[i]
    done;
    print_endline !result
  end else begin
    let result = ref "" in
    for i = 0 to String.length input - 1 do
      if input.[i] >= 'a' && input.[i] <= 'z' then 
        result := !result ^ Char.escaped @@ Char.chr @@ Char.code input.[i] - 32
      else 
        result := !result ^ Char.escaped input.[i]
    done;
    print_endline !result
  end
 
