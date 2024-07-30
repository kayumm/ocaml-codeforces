let () =
  for _ = 1 to read_int () do
    let odd_even = Scanf.scanf " %d" @@ fun x -> x in
    let sum = ref 0 in
    for _ = 1 to odd_even do
      sum := !sum + Scanf.scanf " %d" (fun x -> x)
    done;
    if !sum mod 2 = 0 && odd_even mod 2 = 0 then print_endline "YES" 
    else print_endline "NO"
  done
