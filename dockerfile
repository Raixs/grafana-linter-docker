# We use the official Go image as a base
FROM golang:latest

# We set the working directory in the container
WORKDIR /app

# We install the Grafana linter
RUN go install github.com/grafana/dashboard-linter@latest

# We add the linter executable to the PATH
ENV PATH="/root/go/bin:${PATH}"

# Default command to run the linter
CMD ["dashboard-linter", "lint", "/app/dashboard.json"]

