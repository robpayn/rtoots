library(rmarkdown)

render(
  input = "./02_protocol/template.Rmd",
  output_format = word_document(
    reference_docx = "template.docx"
  ),
  output_dir = "./02_protocol",
  output_file = "template.docx",
  knit_root_dir = "."
)
