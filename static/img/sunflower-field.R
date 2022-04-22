library("EBImage")
x = readImage("sunflower-field2.jpg")

vertical   = function(x) abind(x, x[, rev(seq_len(dim(x)[2])), ], along = 2)
horizontal = function(x) abind(x[rev(seq_len(dim(x)[1])), , ], x, along = 1)

tx = resize(x, w = dim(x)[1] / 4) |> horizontal() |> Image()
           
writeImage(tx, files = "bg-sunflower.jpg")