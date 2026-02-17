| Service        | Port (Host → Container)                                             | GUI / Dashboard URL                                                                          |
| -------------- | ------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| **PostgreSQL** | 5432 → 5432                                                         | No GUI default, tapi bisa pakai [pgAdmin](https://www.pgadmin.org/) di browser               |
| **RabbitMQ**   | 5672 → 5672 (AMQP) <br> 15672 → 15672 (Management)                  | `http://localhost:15672`                                                                     |
| **EMQX**       | 1883 → 1883 (MQTT) <br> 18083 → 18083 (Dashboard)                   | `http://localhost:18083`                                                                     |
| **Redis**      | 6379 → 6379                                                         | No GUI default, bisa pakai [RedisInsight](https://redis.com/redis-enterprise/redis-insight/) |
| **MediaMTX**   | 8554 → 8554 (RTSP) <br> 8888 → 8888 (HLS) <br> 8443 → 8443 (WebRTC) | Browser for HLS: `http://localhost:8888`                                                     |
