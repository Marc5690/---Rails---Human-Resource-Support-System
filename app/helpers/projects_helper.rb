module ProjectsHelper

Normal_Days_In_Month = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  #COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def days_in_month(month, year )#= Time.now.year)
   return 29 if month == 2 && Date.gregorian_leap?(year)
   Normal_Days_In_Month[month]
end
  

end