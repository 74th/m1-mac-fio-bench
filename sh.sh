set -xe
fio -io_size=30g -runtime=10 -direct=1 -invalidate=1 -ioengine=posixaio -iodepth=1 -group_reporting -rw=read -size=30g -directory=./ -bs=20m -numjobs=1 -name=sequencial-read -output=./sequencial-read.txt
fio -io_size=30g -runtime=10 -direct=1 -invalidate=1 -ioengine=posixaio -iodepth=1 -group_reporting -rw=write -size=30g -directory=./ -bs=20m -numjobs=1 -name=sequencial-read -output=./sequencial-write.txt
fio -io_size=1g -runtime=10 -direct=1 -invalidate=1 -ioengine=posixaio -iodepth=1 -group_reporting -rw=randread -size=1g -directory=./ -bs=4k -numjobs=1 -name=random-read-4KB-1Thread -output=./random-read-4K-1Thread.txt
fio -io_size=1g -runtime=10 -direct=1 -invalidate=1 -ioengine=posixaio -iodepth=1 -group_reporting -rw=randwrite -size=1g -directory=./ -bs=4k -numjobs=1 -name=random-read-4KB-1Thread -output=./random-write-4K-1Thread.txt
fio -io_size=1g -runtime=10 -direct=1 -invalidate=1 -ioengine=posixaio -iodepth=1 -group_reporting -rw=randread -size=1g -directory=./ -bs=4k -numjobs=8 -name=random-read-4KB-8Thread -output=./random-read-4K-8Thread.txt
fio -io_size=1g -runtime=10 -direct=1 -invalidate=1 -ioengine=posixaio -iodepth=1 -group_reporting -rw=randwrite -size=1g -directory=./ -bs=4k -numjobs=8 -name=random-read-4KB-8Thread -output=./random-write-4K-8Thread.txt
fio -io_size=1g -runtime=10 -direct=1 -invalidate=1 -ioengine=posixaio -iodepth=1 -group_reporting -rw=randread -size=1g -directory=./ -bs=4k -numjobs=64 -name=random-read-4KB-64Thread -output=./random-read-4K-64Thread.txt
fio -io_size=1g -runtime=10 -direct=1 -invalidate=1 -ioengine=posixaio -iodepth=1 -group_reporting -rw=randwrite -size=1g -directory=./ -bs=4k -numjobs=64 -name=random-read-4KB-64Thread -output=./random-write-4K-64Thread.txt
