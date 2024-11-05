FROM python:3.9.20-bookworm

RUN mkdir -p /usr/lib/jvm
RUN mkdir /hadoop
RUN mkdir /to_install

COPY req.txt /to_install/
COPY JRE-17.0.13.tar.gz /to_install/
COPY hadoop-2.7.3.tar.gz /to_install/

RUN tar -xzvf /to_install/JRE-17.0.13.tar.gz -C /usr/lib/jvm/
RUN tar -xzvf /to_install/hadoop-2.7.3.tar.gz -C /hadoop

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /to_install/req.txt
RUN rm -rf /to_install

ENV PYSPARK_HADOOP_VERSION=3
ENV JAVA_HOME=/usr/lib/jvm/jdk-17.0.13+11-jre
ENV PATH=$JAVA_HOME/bin:$PATH
ENV HADOOP_HOME=/hadoop/hadoop-2.7.3
ENV PATH=$HADOOP_HOME/bin:$PATH
ENV LD_LIBRARY_PATH=$HADOOP_HOME/lib/native

CMD ["java", "-version"]