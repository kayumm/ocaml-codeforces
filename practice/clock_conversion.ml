let am = " AM" 
let pm = " PM"
let () =
  for _ = 1 to read_int () do
    let str = Scanf.scanf " %s" (fun x -> x) in
    let hr = int_of_string @@ String.make 1 str.[0] ^ String.make 1 str.[1] in
    let sec = String.make 1 str.[2] ^ String.make 1 str.[3] ^ String.make 1 str.[4] in
    if hr > 0 && hr < 10 then
      let res = "0" ^ string_of_int (hr) ^ sec ^ am in
      print_endline res
    else if hr >= 10 && hr < 12 then
      let res = string_of_int (hr) ^ sec ^ am in
      print_endline res
    else if hr = 0 then
      let res = string_of_int (hr + 12) ^ sec ^ am in
      print_endline res
    else if hr > 12 then
      if (hr - 12) < 10 then
        let res = "0" ^ string_of_int (hr - 12) ^ sec ^ pm in
        print_endline res
      else
        let res = string_of_int (hr - 12) ^ sec ^ pm in
        print_endline res
    else if hr = 12 then 
      let res = string_of_int (hr) ^ sec ^ pm in
      print_endline res
  done
