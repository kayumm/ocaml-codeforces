let rec gcd a b =
  if b = 0 then a
  else gcd b (a mod b)
 
let main () =
  for _ = 1 to read_int () do
    let tmp = ref 1 in
    let inp = Scanf.scanf " %d" (fun x -> x) in
    for i = 1 to inp - 1 do
      let r = (gcd inp i) + i in
      if r > !tmp && r < inp then tmp := r
    done;
    !tmp |> print_int; print_newline ()
  done
  
let _ = main ()
