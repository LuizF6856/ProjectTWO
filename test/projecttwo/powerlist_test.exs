defmodule Projecttwo.PowerListTest do
    use ExUnit.Case

    test "happy power list" do
        assert Projecttwo.PowerList.power_of_list("1234") == [1,4,9,16] 
    end

    test "bad path power list" do
        assert Projecttwo.PowerList.power_of_list("1234") != [2,4,6,8]
    end
end
