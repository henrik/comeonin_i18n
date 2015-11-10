defmodule ComeoninI18nTest do
  use ExUnit.Case, async: true
  import ComeoninI18n

  test "gettext returns Japanese message if locale is ja_JP" do
    Gettext.put_locale(ComeoninI18n.Gettext, "ja_JP")

    assert pass_no_extra_chars ==
    "パスワードは1字以上の数字と記号が含まれている必要があります。"

    assert pass_too_short(8) ==
    "パスワードは8文字以上である必要があります。"
  end

  test "gettext returns French message if locale is fr_FR" do
    Gettext.put_locale(ComeoninI18n.Gettext, "fr_FR")

    assert pass_no_extra_chars ==
    "Le mot de passe doit contenir au moins un chiffre et un signe de ponctuation."

    assert pass_too_short(8) ==
    "Le mot de passe doit contenir au moins 8 caractères."
  end

  test "gettext returns German message if locale is de_DE" do
    Gettext.put_locale(ComeoninI18n.Gettext, "de_DE")

    assert pass_no_extra_chars ==
    "Das Kennwort sollte mindestens eine Ziffer und ein Satzzeichen enthalten."

    assert pass_too_short(8) ==
    "Das Kennwort sollte mindestens 8 Zeichen lang sein."
  end

end
