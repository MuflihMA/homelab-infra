#!/bin/bash

# Fungsi untuk ngecek port
check_port() {
  local host=$1
  local port=$2
  nc -zv $host $port &>/dev/null
  if [ $? -eq 0 ]; then
    echo "✅ $host:$port is reachable"
  else
    echo "❌ $host:$port is NOT reachable"
  fi
}

# Fungsi untuk ngecek semua docker container
check_containers() {
  echo "=== Checking Docker Containers ==="
  containers=$(sudo docker ps --format "table {{.Names}}\t{{.Status}}")
  if [ -z "$containers" ]; then
    echo "❌ No running containers"
  else
    echo "$containers"
  fi
  echo "=== Done ==="
}

echo "=== Checking Services ==="

# 1. PostgreSQL
check_port localhost 5432

# 2. RabbitMQ
check_port localhost 5672
check_port localhost 15672

# 3. Redis
check_port localhost 6379

# 4. MQTT (EMQX)
check_port localhost 1883
check_port localhost 18083  # EMQX Dashboard

# 5. MediaMTX
check_port localhost 8554  # RTSP
check_port localhost 8888  # HLS

echo "=== Done ==="
echo ""
check_containers
