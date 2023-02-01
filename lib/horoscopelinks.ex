defmodule Horoscopelinks do
  @moduledoc """
  Documentation for `Horoscopelinks`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Horoscopelinks.hello()
      :world

  """
  def links() do
    for n <- 1..1000 do
      url = "https://www.cosmosdivina.com/"
      first_name = Faker.Person.first_name()
      last_name = Faker.Person.last_name()
      filepathname = "horoscope_for_#{String.downcase(first_name)}_#{n}"
      path = "lib/horoscopes/#{filepathname}"
      filepath = "#{path}/#{filepathname}.md"

      IO.inspect(path)
      IO.inspect(filepath)

      description = first_name <> " " <> last_name <> "'s [horoscope](#{url})."
      File.mkdir(path)
      File.write(filepath, description)
    end
  end
end
