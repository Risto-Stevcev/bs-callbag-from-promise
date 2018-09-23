let promise: string Js.Promise.t = [%raw {|
  new Promise((resolve, reject) => {
    setTimeout(() => resolve('foo'), 3000)
  })
|}]

let _ =
  promise
  |> CallbagFromPromise.from_promise
  |> CallbagForEach.for_each Js.log
