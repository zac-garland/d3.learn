d3_json_data <- function(f_path,file_ext = ".json"){
  system.file("inst","extdata",paste0(f_path,file_ext),package = "d3.learn")

}

d3_csv_data <- function(f_path,file_ext = ".csv"){
  system.file("inst","extdata",paste0(f_path,file_ext),package = "d3.learn")

}

weather_data <- function(...){
  jsonlite::read_json(d3_json_data("my_weather_data"))



}
