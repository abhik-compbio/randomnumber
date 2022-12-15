! Random number generation between 1 to 1000
! Written by Abhik Ghosh Moulick, SNBNCBS

program test_rand
integer :: seed, num, k
real :: a
seed = 187656
do i = 1,1000
	call system_clock(k)
	seed = seed + k
  	call srand(seed)
	a = 1000*rand(seed)
	num = int(a)
	write (*,*)i, num
end do
end program test_rand

