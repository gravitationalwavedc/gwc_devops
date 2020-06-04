FROM jenkins/jenkins:lts

USER root

ENV KEYSTORE $JAVA_HOME/jre/lib/security/cacerts

RUN echo $KEYSTORE

RUN wget https://letsencrypt.org/certs/letsencryptauthorityx1.der
RUN wget https://letsencrypt.org/certs/letsencryptauthorityx2.der
RUN wget https://letsencrypt.org/certs/lets-encrypt-x1-cross-signed.der
RUN wget https://letsencrypt.org/certs/lets-encrypt-x2-cross-signed.der
RUN wget https://letsencrypt.org/certs/lets-encrypt-x3-cross-signed.der
RUN wget https://letsencrypt.org/certs/lets-encrypt-x4-cross-signed.der

# to be idempotent
RUN keytool -delete -alias isrgrootx1 -keystore $KEYSTORE -storepass changeit 2> /dev/null || true
RUN keytool -delete -alias isrgrootx2 -keystore $KEYSTORE -storepass changeit 2> /dev/null || true
RUN keytool -delete -alias letsencryptauthorityx1 -keystore $KEYSTORE -storepass changeit 2> /dev/null || true
RUN keytool -delete -alias letsencryptauthorityx2 -keystore $KEYSTORE -storepass changeit 2> /dev/null || true
RUN keytool -delete -alias letsencryptauthorityx3 -keystore $KEYSTORE -storepass changeit 2> /dev/null || true
RUN keytool -delete -alias letsencryptauthorityx4 -keystore $KEYSTORE -storepass changeit 2> /dev/null || true

RUN keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias isrgrootx1 -file letsencryptauthorityx1.der
RUN keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias isrgrootx2 -file letsencryptauthorityx2.der
RUN keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias letsencryptauthorityx1 -file lets-encrypt-x1-cross-signed.der
RUN keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias letsencryptauthorityx2 -file lets-encrypt-x2-cross-signed.der
RUN keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias letsencryptauthorityx3 -file lets-encrypt-x3-cross-signed.der
RUN keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias letsencryptauthorityx4 -file lets-encrypt-x4-cross-signed.der

# Install to local keystore as well
RUN wget https://letsencrypt.org/certs/isrgrootx1.pem
RUN mv isrgrootx1.pem /usr/local/share/ca-certificates/
RUN update-ca-certificates

RUN rm -f letsencryptauthorityx1.der letsencryptauthorityx2.der lets-encrypt-x1-cross-signed.der lets-encrypt-x2-cross-signed.der lets-encrypt-x3-cross-signed.der lets-encrypt-x4-cross-signed.der

USER ${user}
