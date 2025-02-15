proc get_element {list index} { 
  if {$index < 0 || $index >= [llength $list]} { 
    return -code error "Index out of range" 
  } 
  return [lindex $list $index] 
} 

# Example usage: 
set myList {a b c d e} 
puts [get_element $myList 2]  ;# Correct: prints c 
puts [get_element $myList 10] ;# Correct: throws error
puts [get_element $myList -1] ;# Correct: throws error
puts [get_element $myList 0] ;# Correct: prints a
puts [get_element $myList 4] ;# Correct: prints e
