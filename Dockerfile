FROM scratch as native_image_run
# Defining build arguments
ARG DEST=/home
ARG VOL=/volume
# Copy the generated executable from the clone stage
COPY --from=native_image ${VOL} ${DEST}
# Set the environment variable for the application path
ENV COMMAND_TO_RUN=/home/JNQ_DEMONSTRATION_APP
# The container will run this command when it starts
ENTRYPOINT ["/home/JNQ_DEMONSTRATION_APP"]