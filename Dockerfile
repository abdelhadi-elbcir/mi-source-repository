# Use official WSO2 Micro Integrator as the base image
FROM wso2/wso2mi:4.2.0

# Set maintainer information
LABEL maintainer="Your Name <your.email@example.com>"

# Set environment variables if needed
ENV CARBON_HOME="/home/wso2carbon/wso2mi-4.2.0"

# Copy your CAR files to the applications directory
COPY target/*.car ${CARBON_HOME}/repository/deployment/server/carbonapps/

# Copy any custom configurations if needed
# COPY configs/deployment.toml ${CARBON_HOME}/conf/

# Copy custom certificates to the resources directory if needed
# COPY certs/custom-cert.pem ${CARBON_HOME}/repository/resources/security/

# Expose default ports
EXPOSE 8290 8253 9201

# Start Micro Integrator
CMD ["sh", "-c", "${CARBON_HOME}/bin/micro-integrator.sh"]
