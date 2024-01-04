import logging
import time

logging.basicConfig(level=logging.DEBUG, format="%(asctime)s %(levelname)s %(threadName)s %(name)s %(message)s")

while 1:
    logging.warning("Hello World")
    time.sleep(3)

