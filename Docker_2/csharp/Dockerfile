FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /app

COPY fibonacci.cs /app/Fibonacci.cs

RUN dotnet new console -o . && \
    mv Fibonacci.cs Program.cs && \
    dotnet build -c Release -o out

FROM mcr.microsoft.com/dotnet/runtime:7.0

WORKDIR /app

COPY --from=build /app/out .

CMD ["dotnet", "Fibonacci.dll"]



