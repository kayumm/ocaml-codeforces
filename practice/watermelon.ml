let () =
  let inp = Scanf.scanf "%d\n" (fun x -> x) in
  if inp mod 2 = 0 then 
    Printf.printf "YES"
  else
    Printf.printf "NO"
