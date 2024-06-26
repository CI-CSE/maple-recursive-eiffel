class
	MAPLE_RECURSIVE_INCREMENT_1

feature
	increment (n: INTEGER): INTEGER
		require
			arg_non_negative: n >= 0
		do
			if n = 0 then
				Result := 3
			else
				Result := 1 + increment (n - 1)
			end
		ensure
			result_is_arg: Result = n
		end
end
