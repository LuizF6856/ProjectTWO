defmodule ProjecttwoWeb.PowerListControllerTest do 
    use ProjecttwoWeb.ConnCase

    describe "list" do
        test "Testing controller of list" , %{conn: conn} do
            conn = get(conn, Routes.power_path(conn, :list, "1234"))
        
            assert json_response(conn, 200)["powerlist"] == [1,4,9,16]
        end
    end
end
