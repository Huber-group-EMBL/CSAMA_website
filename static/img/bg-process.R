library("EBImage")


vertical   = function(x) Image(abind(x, x[, rev(seq_len(dim(x)[2])), ], along = 2))

horizontal = function(x, q = c(0, 1), order = 1) {
  stopifnot(is.numeric(q), length(q)==2, order %in% c(1, 2))
  i = round(dim(x)[1] * q[1]) : round(dim(x)[1] * q[2])
  if (order == 2) { i = rev(i) }
  Image(abind(x[i,,], x[rev(i),,], along = 1))
}
shrink = function(x, fac) resize(x, w = round(dim(x)[1] * fac))  
  
readImage("sunflower-field2.jpg") |>
  shrink(0.25) |> 
  horizontal() |> 
  writeImage(files = "bg-sunflower.jpg")

readImage("bg-greenwaves-orig.jpg") |>
  horizontal(q = c(0, 0.9), order = 1) |> 
  writeImage(files = "bg-greenwaves.jpg")