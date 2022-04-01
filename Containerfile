FROM jenkins/jenkins:2.341

ENV JAVA_OPTS="-Dio.jenkins.plugins.casc.ConfigurationAsCode.initialDelay=9000 -Djenkins.install.runSetupWizard=false -Dorg.jenkinsci.main.modules.sshd.SSHD.hostName=127.0.0.1"


# Install plugins
COPY files/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt