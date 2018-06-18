echo dyn 1>> stderr.dat
echo dyn 1>> stdout.dat
./vgg_test.out dyn p $1 2>> stderr.dat 1>> stdout.dat
echo conv_p 1>> stderr.dat
echo conv_p 1>> stdout.dat
./vgg_test.out conv p $1 2>> stderr.dat 1>> stdout.dat
echo conv_m 1>> stderr.dat
echo conv_m 1>> stdout.dat
./vgg_test.out conv m $1 2>> stderr.dat 1>> stdout.dat
echo all_p 1>> stderr.dat
echo all_p 1>> stdout.dat
./vgg_test.out all p $1 2>> stderr.dat 1>> stdout.dat
echo all_m 1>> stderr.dat
echo all_m 1>> stdout.dat
./vgg_test.out all m $1 2>> stderr.dat 1>> stdout.dat
echo alternate_conv_m 1>> stderr.dat
echo alternate_conv_m 1>> stdout.dat
./vgg_test.out alternate_conv m $1 2>> stderr.dat 1>> stdout.dat
echo alternate_conv_p 1>> stderr.dat
echo alternate_conv_p 1>> stdout.dat
./vgg_test.out alternate_conv p $1 2>> stderr.dat 1>> stdout.dat
mkdir first_run
for f in *.dat*; do
	mv $f first_run/$f
done;
cd first_run
mkdir cnmem_log
for f in cnmem_*; do
	mv $f cnmem_log/$f
done;
cd first_run