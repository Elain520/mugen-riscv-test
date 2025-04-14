echo "Start tracing"
trace-cmd start -p function  # 开始跟踪

# 这里是需要重点跟踪的代码
# sleep 1
# time bash mugen.sh -f smoke -r oe_test_golang -x
#
# echo "Stop tracing"
# trace-cmd stop  # 停止跟踪
# trace-cmd report  # 生成报告
