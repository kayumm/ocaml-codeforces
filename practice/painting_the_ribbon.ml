let solve () =
  for _ = 1 to read_int () do
    let n, m, k = Scanf.scanf " %d %d %d" @@ fun x y z -> x, y, z in
    if n = m || n mod m = 0 then begin
      let max_single = (n / m) in
      let left = n - max_single in
      if left > k then print_endline "YES" else  print_endline "NO"
    end else if n = k then begin
      print_endline "NO"    
    end else if n <> m then begin
      let max_single = (n / m) + 1 in
      let left = n - max_single in
      if left > k then print_endline "YES" else print_endline "NO"
    end
  done
  
let () = solve ()
