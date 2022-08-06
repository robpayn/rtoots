library(rmarkdown)

unique = FALSE

wordFileName <- "graphics.docx"
htmlFileName <- "graphics.html"
if (unique) {
  wordFileName <- sprintf(
    "graphics_%s.docx",
    format(
      x = Sys.time(),
      format = "%Y%m%d_%H%M%S"
    )
  )
  htmlFileName <- sprintf(
    "graphics_%s.html",
    format(
      x = Sys.time(),
      format = "%Y%m%d_%H%M%S"
    )
  )
}

render(
  input = "./02_protocol/graphics.Rmd",
  output_format = word_document(
    reference_docx = "template.docx"
  ),
  output_dir = "./04_product",
  output_file = wordFileName,
  knit_root_dir = ".",
  intermediates_dir = "./03_incremental/temp/markdown/word"
)

render(
  input = "./02_protocol/graphics.Rmd",
  output_format = "html_document",
  output_dir = "./04_product",
  output_file = htmlFileName,
  knit_root_dir = ".",
  intermediates_dir = "./03_incremental/temp/markdown/html"
)