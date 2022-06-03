rmarkdown::render(
  input = "./graphics.Rmd",
  output_format = "word_document",
  output_file = "./graphics.docx",
  knit_root_dir = "."
)