FROM mcr.microsoft.com/dotnet/core/sdk:5.0 AS build-env
WORKDIR /app
 
# Copy csproj and restore as distinct layers
COPY SecuredResources/SecuredWebApi/*.csproj ./
RUN dotnet restore
 
# Copy everything else and build
COPY ./SecuredResources/SecuredWebApi ./
RUN dotnet publish -c Release -o out
 
# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:5.0
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "SecuredWebApi.dll"]