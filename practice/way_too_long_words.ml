let () =
  let input = Scanf.scanf "%d\n" (fun x -> x) in
  let arr = Array.make input "" in
  for i = 0 to Array.length arr - 1 do
    let str_inp = Scanf.scanf "%s\n" (fun x -> x) in
    arr.(i) <- str_inp
  done;
  
  for i = 0 to Array.length arr - 1 do
    if String.length arr.(i) > 10 then
      let hd = arr.(i).[0] in
      let tl = arr.(i).[String.length arr.(i) - 1] in
      let len = String.length arr.(i) - 2 in
      Printf.printf "%c%d%c\n" hd len tl
    else
      Printf.printf "%s\n" arr.(i)
  done
