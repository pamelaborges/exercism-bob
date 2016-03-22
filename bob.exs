defmodule Bob do
  def hey(input) do
    input_strip = String.strip(input)
    cond do
       is_question?(input_strip) -> "Sure."
       is_empty?(input_strip) -> "Fine. Be that way!"
       is_shout?(input_strip) -> "Whoa, chill out!"
       true -> "Whatever."
    end
  end

  defp is_question?(input), do: String.ends_with?(input,"?")
  defp is_empty?(""), do: true
  defp is_empty?(input), do: false
  defp is_shout?(input), do: String.upcase(input) == input && String.downcase(input) != input
end
