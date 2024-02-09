### Using the pypz python base image ###
FROM pypz/python-base-dev:latest

### Copying project context ###
COPY dist/* ./
RUN pip install ./*.whl

### Setting entry point and command ###
# You shall always set the entry point and command like below.
# The startup script comes from the base image and ensures the
# proper starting of the operator executor.
ENTRYPOINT ["/bin/bash"]
CMD ["pypz-startup.sh"]