# rsyslog-server-on-k8s

Deploy rsyslog service on Kubernetes


## reference
https://knowledge.sakura.ad.jp/8975/
https://rsyslog.readthedocs.io/


## Promehteus exporter
https://github.com/prometheus-community/rsyslog_exporter


```
# HELP go_gc_duration_seconds A summary of the GC invocation durations.
# TYPE go_gc_duration_seconds summary
go_gc_duration_seconds{quantile="0"} 0
go_gc_duration_seconds{quantile="0.25"} 0
go_gc_duration_seconds{quantile="0.5"} 0
go_gc_duration_seconds{quantile="0.75"} 0
go_gc_duration_seconds{quantile="1"} 0
go_gc_duration_seconds_sum 0
go_gc_duration_seconds_count 0
# HELP go_goroutines Number of goroutines that currently exist.
# TYPE go_goroutines gauge
go_goroutines 10
# HELP go_info Information about the Go environment.
# TYPE go_info gauge
go_info{version="go1.13.15"} 1
# HELP go_memstats_alloc_bytes Number of bytes allocated and still in use.
# TYPE go_memstats_alloc_bytes gauge
go_memstats_alloc_bytes 814600
# HELP go_memstats_alloc_bytes_total Total number of bytes allocated, even if freed.
# TYPE go_memstats_alloc_bytes_total counter
go_memstats_alloc_bytes_total 814600
# HELP go_memstats_buck_hash_sys_bytes Number of bytes used by the profiling bucket hash table.
# TYPE go_memstats_buck_hash_sys_bytes gauge
go_memstats_buck_hash_sys_bytes 1.442958e+06
# HELP go_memstats_frees_total Total number of frees.
# TYPE go_memstats_frees_total counter
go_memstats_frees_total 513
# HELP go_memstats_gc_cpu_fraction The fraction of this program's available CPU time used by the GC since the program started.
# TYPE go_memstats_gc_cpu_fraction gauge
go_memstats_gc_cpu_fraction 0
# HELP go_memstats_gc_sys_bytes Number of bytes used for garbage collection system metadata.
# TYPE go_memstats_gc_sys_bytes gauge
go_memstats_gc_sys_bytes 2.240512e+06
# HELP go_memstats_heap_alloc_bytes Number of heap bytes allocated and still in use.
# TYPE go_memstats_heap_alloc_bytes gauge
go_memstats_heap_alloc_bytes 814600
# HELP go_memstats_heap_idle_bytes Number of heap bytes waiting to be used.
# TYPE go_memstats_heap_idle_bytes gauge
go_memstats_heap_idle_bytes 6.4847872e+07
# HELP go_memstats_heap_inuse_bytes Number of heap bytes that are in use.
# TYPE go_memstats_heap_inuse_bytes gauge
go_memstats_heap_inuse_bytes 1.6384e+06
# HELP go_memstats_heap_objects Number of allocated objects.
# TYPE go_memstats_heap_objects gauge
go_memstats_heap_objects 9334
# HELP go_memstats_heap_released_bytes Number of heap bytes released to OS.
# TYPE go_memstats_heap_released_bytes gauge
go_memstats_heap_released_bytes 6.4847872e+07
# HELP go_memstats_heap_sys_bytes Number of heap bytes obtained from system.
# TYPE go_memstats_heap_sys_bytes gauge
go_memstats_heap_sys_bytes 6.6486272e+07
# HELP go_memstats_last_gc_time_seconds Number of seconds since 1970 of last garbage collection.
# TYPE go_memstats_last_gc_time_seconds gauge
go_memstats_last_gc_time_seconds 0
# HELP go_memstats_lookups_total Total number of pointer lookups.
# TYPE go_memstats_lookups_total counter
go_memstats_lookups_total 0
# HELP go_memstats_mallocs_total Total number of mallocs.
# TYPE go_memstats_mallocs_total counter
go_memstats_mallocs_total 9847
# HELP go_memstats_mcache_inuse_bytes Number of bytes in use by mcache structures.
# TYPE go_memstats_mcache_inuse_bytes gauge
go_memstats_mcache_inuse_bytes 13888
# HELP go_memstats_mcache_sys_bytes Number of bytes used for mcache structures obtained from system.
# TYPE go_memstats_mcache_sys_bytes gauge
go_memstats_mcache_sys_bytes 16384
# HELP go_memstats_mspan_inuse_bytes Number of bytes in use by mspan structures.
# TYPE go_memstats_mspan_inuse_bytes gauge
go_memstats_mspan_inuse_bytes 23936
# HELP go_memstats_mspan_sys_bytes Number of bytes used for mspan structures obtained from system.
# TYPE go_memstats_mspan_sys_bytes gauge
go_memstats_mspan_sys_bytes 32768
# HELP go_memstats_next_gc_bytes Number of heap bytes when next garbage collection will take place.
# TYPE go_memstats_next_gc_bytes gauge
go_memstats_next_gc_bytes 4.473924e+06
# HELP go_memstats_other_sys_bytes Number of bytes used for other system allocations.
# TYPE go_memstats_other_sys_bytes gauge
go_memstats_other_sys_bytes 527466
# HELP go_memstats_stack_inuse_bytes Number of bytes in use by the stack allocator.
# TYPE go_memstats_stack_inuse_bytes gauge
go_memstats_stack_inuse_bytes 622592
# HELP go_memstats_stack_sys_bytes Number of bytes obtained from system for stack allocator.
# TYPE go_memstats_stack_sys_bytes gauge
go_memstats_stack_sys_bytes 622592
# HELP go_memstats_sys_bytes Number of bytes obtained from system.
# TYPE go_memstats_sys_bytes gauge
go_memstats_sys_bytes 7.1368952e+07
# HELP go_threads Number of OS threads created.
# TYPE go_threads gauge
go_threads 8
# HELP process_cpu_seconds_total Total user and system CPU time spent in seconds.
# TYPE process_cpu_seconds_total counter
process_cpu_seconds_total 0.06
# HELP process_max_fds Maximum number of open file descriptors.
# TYPE process_max_fds gauge
process_max_fds 1.048576e+06
# HELP process_open_fds Number of open file descriptors.
# TYPE process_open_fds gauge
process_open_fds 7
# HELP process_resident_memory_bytes Resident memory size in bytes.
# TYPE process_resident_memory_bytes gauge
process_resident_memory_bytes 6.168576e+06
# HELP process_start_time_seconds Start time of the process since unix epoch in seconds.
# TYPE process_start_time_seconds gauge
process_start_time_seconds 1.67773854772e+09
# HELP process_virtual_memory_bytes Virtual memory size in bytes.
# TYPE process_virtual_memory_bytes gauge
process_virtual_memory_bytes 1.13717248e+08
# HELP process_virtual_memory_max_bytes Maximum amount of virtual memory available in bytes.
# TYPE process_virtual_memory_max_bytes gauge
process_virtual_memory_max_bytes -1
# HELP promhttp_metric_handler_requests_in_flight Current number of scrapes being served.
# TYPE promhttp_metric_handler_requests_in_flight gauge
promhttp_metric_handler_requests_in_flight 1
# HELP promhttp_metric_handler_requests_total Total number of scrapes by HTTP status code.
# TYPE promhttp_metric_handler_requests_total counter
promhttp_metric_handler_requests_total{code="200"} 0
promhttp_metric_handler_requests_total{code="500"} 0
promhttp_metric_handler_requests_total{code="503"} 0
# HELP rsyslog_action_failed messages failed
# TYPE rsyslog_action_failed counter
rsyslog_action_failed{action="action 0"} 0
rsyslog_action_failed{action="main_utf8fix"} 0
rsyslog_action_failed{action="to_exporter"} 0
# HELP rsyslog_action_processed messages processed
# TYPE rsyslog_action_processed counter
rsyslog_action_processed{action="action 0"} 1
rsyslog_action_processed{action="main_utf8fix"} 1
rsyslog_action_processed{action="to_exporter"} 280
# HELP rsyslog_action_resumed times resumed
# TYPE rsyslog_action_resumed counter
rsyslog_action_resumed{action="action 0"} 0
rsyslog_action_resumed{action="main_utf8fix"} 0
rsyslog_action_resumed{action="to_exporter"} 0
# HELP rsyslog_action_suspended times suspended
# TYPE rsyslog_action_suspended counter
rsyslog_action_suspended{action="action 0"} 0
rsyslog_action_suspended{action="main_utf8fix"} 0
rsyslog_action_suspended{action="to_exporter"} 0
# HELP rsyslog_action_suspended_duration time spent suspended
# TYPE rsyslog_action_suspended_duration counter
rsyslog_action_suspended_duration{action="action 0"} 0
rsyslog_action_suspended_duration{action="main_utf8fix"} 0
rsyslog_action_suspended_duration{action="to_exporter"} 0
# HELP rsyslog_input_submitted messages submitted
# TYPE rsyslog_input_submitted counter
rsyslog_input_submitted{input="imptcp(*/514/IPv4)"} 0
rsyslog_input_submitted{input="imptcp(*/514/IPv6)"} 0
# HELP rsyslog_queue_discarded_full messages discarded due to queue being full
# TYPE rsyslog_queue_discarded_full counter
rsyslog_queue_discarded_full{queue="io-work-q"} 0
rsyslog_queue_discarded_full{queue="main Q"} 0
# HELP rsyslog_queue_discarded_not_full messages discarded when queue not full
# TYPE rsyslog_queue_discarded_not_full counter
rsyslog_queue_discarded_not_full{queue="io-work-q"} 0
rsyslog_queue_discarded_not_full{queue="main Q"} 0
# HELP rsyslog_queue_enqueued total messages enqueued
# TYPE rsyslog_queue_enqueued counter
rsyslog_queue_enqueued{queue="io-work-q"} 0
rsyslog_queue_enqueued{queue="main Q"} 287
# HELP rsyslog_queue_full times queue was full
# TYPE rsyslog_queue_full counter
rsyslog_queue_full{queue="io-work-q"} 0
rsyslog_queue_full{queue="main Q"} 0
# HELP rsyslog_queue_max_size maximum size queue has reached
# TYPE rsyslog_queue_max_size gauge
rsyslog_queue_max_size{queue="io-work-q"} 0
rsyslog_queue_max_size{queue="main Q"} 9
# HELP rsyslog_queue_size messages currently in queue
# TYPE rsyslog_queue_size gauge
rsyslog_queue_size{queue="io-work-q"} 0
rsyslog_queue_size{queue="main Q"} 1
# HELP rsyslog_resource_inblock filesystem input operations
# TYPE rsyslog_resource_inblock counter
rsyslog_resource_inblock{resource="resource-usage"} 0
# HELP rsyslog_resource_majflt total major faults
# TYPE rsyslog_resource_majflt counter
rsyslog_resource_majflt{resource="resource-usage"} 0
# HELP rsyslog_resource_maxrss maximum resident set size
# TYPE rsyslog_resource_maxrss gauge
rsyslog_resource_maxrss{resource="resource-usage"} 9264
# HELP rsyslog_resource_minflt total minor faults
# TYPE rsyslog_resource_minflt counter
rsyslog_resource_minflt{resource="resource-usage"} 1093
# HELP rsyslog_resource_nivcsw involuntary context switches
# TYPE rsyslog_resource_nivcsw counter
rsyslog_resource_nivcsw{resource="resource-usage"} 3
# HELP rsyslog_resource_nvcsw voluntary context switches
# TYPE rsyslog_resource_nvcsw counter
rsyslog_resource_nvcsw{resource="resource-usage"} 196
# HELP rsyslog_resource_oublock filesystem output operations
# TYPE rsyslog_resource_oublock counter
rsyslog_resource_oublock{resource="resource-usage"} 0
# HELP rsyslog_resource_stime system time used in microsends
# TYPE rsyslog_resource_stime counter
rsyslog_resource_stime{resource="resource-usage"} 19335
# HELP rsyslog_resource_utime user time used in microseconds
# TYPE rsyslog_resource_utime counter
rsyslog_resource_utime{resource="resource-usage"} 7336
```
