echo "Start tracing"
trace-cmd start -p function  # 开始跟踪

# time bash mugen.sh -f smoke -r oe_test_golang -x
# bash mugen.sh -f python3 -x
# bash mugen.sh -f openblas -x
# bash mugen.sh -f protobuf -x
# bash mugen.sh -f memcached -x
# bash mugen.sh -f smoke-basic-os -r oe_test_g++ -x
# bash mugen.sh -f os-basic -r oe_test_c++ -x
bash mugen.sh -f os-basic -r oe_test_c++_stl -x

echo "Stop tracing"
trace-cmd stop  # 停止跟踪
trace-cmd extract -o trace.dat
trace-cmd | awk '{print $5}' > report_func_list.log
