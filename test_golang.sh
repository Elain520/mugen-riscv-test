echo "Start tracing"
trace-cmd start -p function  # 开始跟踪

time bash mugen.sh -f smoke -r oe_test_golang -x

echo "Stop tracing"
trace-cmd stop  # 停止跟踪
trace-cmd extract -o trace.dat
trace-cmd | awk '{print $5}' > report_func_list.log
