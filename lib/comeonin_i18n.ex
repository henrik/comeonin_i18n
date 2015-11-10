defmodule ComeoninI18n do

  import ComeoninI18n.Gettext

  def pass_too_short(min_len) do
    gettext "The password should be at least %{min_len} characters long.", min_len: min_len
  end

  def pass_no_extra_chars do
    gettext "The password should contain at least one number and one punctuation character."
  end

  def weak_pass do
    gettext "The password you have chosen is weak because it is easy to guess. Please choose another one."
  end

end
