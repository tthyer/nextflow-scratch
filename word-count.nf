#!/usr/bin/env nextflow

file_ch = Channel.fromPath(params.input_file)

process count_lines {

  input:
  file input_file from file_ch

  output:
  stdout out

  script:
  """
  cat $input_file | wc -l
  """
}

//receiver.view { "Number of lines in file: $it" }
out.view { "Number of lines in file: $it" }