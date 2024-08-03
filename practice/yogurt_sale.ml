let solve () = 
  for _ = 1 to read_int () do
    let n, a, b = Scanf.scanf " %d %d %d" @@ fun x y z -> x, y, z in
    if n mod 2 = 0 then begin
      let amount = n / 2 in
      let discount = amount * b in
      let regular = n * a in
      if discount < regular then begin 
        print_int discount; print_newline () end
      else begin print_int regular; print_newline () end
    end else begin
      let amount = (n / 2) in
      let discount = (amount * b) + a in
      let regular = n * a in
      if discount < regular then begin 
        print_int discount; print_newline () end
      else begin print_int regular; print_newline () end
    end
  done
  
let () = solve ()
