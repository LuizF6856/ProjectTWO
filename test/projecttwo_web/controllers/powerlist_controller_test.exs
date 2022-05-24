defmodule ProjecttwoWeb.PowerListControllerTest do
  use ProjecttwoWeb.ConnCase

  @string_numbers "1234"

  describe "list" do
    test "testing controller of endpoint", %{conn: conn} do
      conn = get(conn, Routes.power_path(conn, :list, @string_numbers))

      assert json_response(conn, 200)["powerlist"] == [1, 4, 9, 16]
    end

    test "Testing controller of list fail", %{conn: conn} do
      conn = get(conn, Routes.power_path(conn, :list, @string_numbers))

      assert json_response(conn, 200)["powerlist"] != [2, 4, 6, 12]
    end
  end
end
