
launchctl setenv M2_HOME $M2_HOME
launchctl setenv MAVEN_HOME $MAVEN_HOME
launchctl setenv MAVEN_REPOSITORY_HOME $MAVEN_REPOSITORY_HOME
launchctl setenv GRADLE_HOME $GRADLE_HOME
launchctl setenv GRADLE_USER_HOME $GRADLE_USER_HOME

#env | tr '=' ' ' | awk '{print "launchctl setenv " $1 " " $2}' | sh 