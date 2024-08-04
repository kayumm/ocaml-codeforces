let main () =
  for _ = 1 to read_int () do
    let a, b = Scanf.scanf " %d %d" @@ fun i j -> i, j in
    if b < a then
      Printf.printf "%d %d\n" b a
    else 
      Printf.printf "%d %d\n" a b
  done
 
let _ = main ()
