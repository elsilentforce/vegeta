#!/bin/bash
echo 'Executing first test: 10 request/sec during 1s, please wait...'
vegeta attack -rate=10 -duration=1s -targets=../targets/nyg_multi.txt > ../results/results_1s.bin && vegeta report -inputs=../results/results_1s.bin -reporter=plot > ../reports/report_1s.html
echo 'Executing second test: 10 request/sec during 5s, please wait...'
vegeta attack -rate=10 -duration=5s -targets=../targets/nyg_multi.txt > ../results/results_5s.bin && vegeta report -inputs=../results/results_5s.bin -reporter=plot > ../reports/report_5s.html
echo 'Executing third test: 10 request/sec during 10s, please wait...'
vegeta attack -rate=10 -duration=10s -targets=../targets/nyg_multi.txt > ../results/results_10s.bin  && vegeta report -inputs=../results/results_10s.bin -reporter=plot > ../reports/report_10s.html
echo 'Executing fourth test: 10 request/sec during 30s, please wait...'
vegeta attack -rate=10 -duration=30s -targets=../targets/nyg_multi.txt > ../results/results_30s.bin && vegeta report -inputs=../results/results_30s.bin -reporter=plot > ../reports/report_30s.html
echo 'Executing fifth test: 10 request/sec during 60s, please wait...'
vegeta attack -rate=10 -duration=60s -targets=../targets/nyg_multi.txt > ../results/results_60s.bin && vegeta report -inputs=../results/results_60s.bin -reporter=plot > ../reports/report_60s.html
echo 'Executing sixth test: 10 request/sec during 120s, please wait...'
vegeta attack -rate=10 -duration=120s -targets=../targets/nyg_multi.txt > ../results/results_120s.bin && vegeta report -inputs=../results/results_120s.bin -reporter=plot > ../reports/report_120s.html
echo 'Executing seventh test: 10 request/sec during 300s, please wait...'
vegeta attack -rate=10 -duration=300s -targets=../targets/nyg_multi.txt > ../results/results_300s.bin && vegeta report -inputs=../results/results_300s.bin -reporter=plot > ../reports/report_300s.html
