# Usamos la imagen oficial de Go como base
FROM golang:latest

# Establecemos el directorio de trabajo en el contenedor
WORKDIR /app

# Instalamos el linter de Grafana
RUN go install github.com/grafana/dashboard-linter@latest

# Añadimos el ejecutable del linter al PATH
ENV PATH="/root/go/bin:${PATH}"

# Comando por defecto para ejecutar el linter
CMD ["dashboard-linter", "lint", "/app/dashboard.json"]
