let () =
  let inp = Scanf.scanf "%d\n" (fun x -> x) in
  if inp <= 2 || inp mod 2 <> 0 then 
    Printf.printf "NO"
  else
    Printf.printf "YES"
