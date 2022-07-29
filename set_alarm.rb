# Write a function named setAlarm which receives two parameters.
# The first parameter, employed, is true whenever you are employed and the second
# parameter, vacation is true whenever you are on vacation.
#
# The function should return true if you are employed and not on vacation
# (because these are the circumstances under which you need to set an alarm).
# It should return false otherwise. Examples:

def set_alarm(employed, vacation)
  if employed == true && vacation == false
    return true
  else
    return false
  end
end

p set_alarm(true, true) == false
p set_alarm(false, true) == false
p set_alarm(false, false) == false
p set_alarm(true, false) == true

#
# This is intesting because actually the outcome is true only in 1 case,
# when the employee is employed and not on vacation.
# This can be expressed in just 1 line:

def set_alarm(employed, vacation)
  employed && !vacation
end

p set_alarm(true, true) == false
p set_alarm(false, true) == false
p set_alarm(false, false) == false
p set_alarm(true, false) == true
