# Etapa de construcción
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /app

# Crear el proyecto de consola
RUN dotnet new console -o . 

# Copiar el código fuente y compilar
COPY Fibonacci.cs /app/Program.cs
RUN dotnet build -c Release -o out

# Etapa de ejecución
FROM mcr.microsoft.com/dotnet/runtime:7.0
WORKDIR /app
COPY --from=build /app/out .

CMD ["dotnet", "app.dll"]

