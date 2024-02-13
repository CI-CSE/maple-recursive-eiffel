class
	MAPLE_RECURSIVE_INCREMENT_2

feature
	increment (n: INTEGER): INTEGER
		require
			arg_non_negative: n >= 0
		do
			if n = 0 then
				Result := 0
			else
				Result := 3 + increment (n - 1)
			end
		ensure
			result_is_arg: Result = n
		end
end
