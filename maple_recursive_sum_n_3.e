note
	description: "Summary description for {MAPLE_RECURSIVE_SUM_N_3}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MAPLE_RECURSIVE_SUM_N_3

feature
	sum (a_n: INTEGER): INTEGER
		require
			argument_non_negative: a_n >= 0
		local
			l_k: INTEGER
		do
			if a_n = 0 then
				Result := 0
			else
				l_k := sum (a_n - 1)
				Result := a_n - l_k
			end
		ensure
			correct_result: 2 * Result = a_n * (a_n + 1)
		end

end
