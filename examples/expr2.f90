module types_m
  implicit none

  type int_t
    integer :: i
  end type

  type(int_t), parameter ::  &
    T_ONE = int_t(1),  &
    T_TWO = int_t(2),  &
    T_THREE = int_t(3)

  type(int_t), parameter ::  &
    T_ALL(3) = (/ T_ONE, T_TWO, T_THREE /)

end module

program use_types_m
  use types_m
  implicit none

  type(int_t) :: var

  print *, "T_ONE%i = ", T_ONE%i
  print *, "T_TWO%i = ", T_TWO%i
  print *, "T_THREE%i = ", T_THREE%i

  print *, "T_ALL array:"
  print *, "  T_ALL(1)%i = ", T_ALL(1)%i
  print *, "  T_ALL(2)%i = ", T_ALL(2)%i
  print *, "  T_ALL(3)%i = ", T_ALL(3)%i

  ! Demonstrate using the type
  var = T_TWO
  print *, "Variable var%i = ", var%i

end program