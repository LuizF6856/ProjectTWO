defmodule Projecttwo.PowerListTest do
    use ExUnit.Case

    @string_numbers "1234"

    test "happy power list" do
        assert Projecttwo.PowerList.power_of_list(@string_numbers) == [1,4,9,16] 
    end

    test "bad path power list" do
        assert Projecttwo.PowerList.power_of_list(@string_numbers) != [1,8,27,64]
    end
end
