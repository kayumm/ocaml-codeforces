let solve () =
  let n = read_int () in
  for i = 0 to n -1 do
    let s1, s2, s3, s4 = Scanf.scanf "%d %d %d %d\n" (fun a b c d -> a, b, c, d) in
    let max1, max2, min1, min2 = (max s1 s2), (max s3 s4), (min s1 s2), (min s3 s4) in
    if (max1 < min2) || (max2 < min1) then print_endline "NO"
    else print_endline "YES" 
  done

let _ = solve ()
