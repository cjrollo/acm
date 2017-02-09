# Derive from base image
FROM kalilinux/kali-linux-docker:latest

# Install Kali Linux packages
# apt-get update && apt-get install -y kali-linux-top10
RUN apt-get update && apt-get install -y \
  kali-linux-top10

# Useful information...
#   http://docs.kali.org/introduction/kali-linux-default-passwords
# To install the watobo packages
#RUN apt-get update && apt-get install -y watobo

# Expose communication ports

EXPOSE 4444

#From here,
# Start the Kali PostgreSQL Service
#RUN service postgresql start
# Initialise the Metasploit PostgreSQL Database
#RUN msfdb init
# Launch msfconsole in Kali
#   msfconsole
#   msf > db_status
#CMD ["msfconsole"]
CMD ["/bin/bash"]
