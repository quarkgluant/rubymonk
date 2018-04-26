def multi_line_string(*lines)
  # newline, carriage-return, whatever-you-call it.
  <<-HEREDOC.chomp
Here are your lines!\n\n#{lines.join("\n")}
  HEREDOC
end
