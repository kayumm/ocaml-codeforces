let solve () =
  for _ = 1 to read_int () do
    let a, b, c = Scanf.scanf "%d %d %d\n" (fun x y z -> x, y, z) in
    if a = b then begin print_int c; print_newline () end
    else if a = c then begin print_int b; print_newline () end
    else if b = c then begin print_int a; print_newline () end
    else begin print_int b; print_newline () end
  done

  let _ = solve ()
