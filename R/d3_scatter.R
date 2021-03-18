d3_scatter <- function(data = weather_data(), color = "orange", width = NULL, height = NULL) {
  r2d3::r2d3(
    data = data,
    script = system.file("d3/d3_scatter.js", package = "d3.learn"),
    width = width,
    height = height
  )
}
