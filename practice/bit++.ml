let solve () = 
  let inp = read_int () 
  and count = ref 0 in
  for _ = 0 to inp - 1 do
    let str = read_line () in
    if str.[0] = '+' || str.[1] = '+' then count := !count + 1
    else if str.[0] = '-' || str.[1] = '-' then count := !count - 1
  done;
  !count |> print_int

let _ = solve ()
