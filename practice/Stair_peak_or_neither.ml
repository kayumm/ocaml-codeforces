let () =
  let n = Scanf.scanf "%d" (fun x -> x) in
  for _ = 1 to n do
    let a, b, c = Scanf.scanf " %d %d %d" (fun x y z -> x, y, z) in
    if b > a && c > b then print_endline "STAIR" 
    else if b > a && b > c then  print_endline "PEAK"
    else print_endline "NONE"
  done
