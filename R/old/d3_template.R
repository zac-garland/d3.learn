d3_barchart <- function(data, color = "orange", width = NULL, height = NULL) {
  r2d3::r2d3(
    data = data,
    script = system.file("d3/barchart/barchart.js", package = "d3barchart"),
    width = width,
    height = height
  )
}
