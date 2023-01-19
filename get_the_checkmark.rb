arr = [ "Cancel", "Greeting", "Default", "Vv", "Custom" ]

index_of_checkmark =  arr.index("V") || arr.index("Vv")
p index_of_checkmark

default_greeting_activated = arr[index_of_checkmark] && arr[index_of_checkmark - 1] == "Default"
p default_greeting_activated
