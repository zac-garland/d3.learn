d3_html_file <- function(f_path){
  file.path("inst","d3_visuals",paste0(f_path,".html"))

}



d3_json_data <- function(f_path){
  system.file("inst","extdata",paste0(f_path,".json"),package = "d3.learn")

}

d3_csv_data <- function(f_path){
  system.file("inst","extdata",paste0(f_path,".csv"),package = "d3.learn")

}
