# voxtet.cz

## Solution and Projects

How to generate Solution and all its Project references, list all `dotnet new` commang help usinig:
```
dotnet new webapi -h

dotnet new mvc -h
REM --use-local-db

dotnet new classlib -h

dotnet new webapi -h
```

Then tune following scripts...

```bash

dotnet new webapi -n Voxtet.Web.Api -o Voxtet.Web.Api
dotnet sln add Voxtet.Web.Api/Voxtet.Web.Api.csproj

dotnet new classlib -n Voxtet.Web.Data -o Voxtet.Web.Data -f netcoreapp3.0
REM ??? -f netstandard2.0
dotnet sln add Voxtet.Web.Data/Voxtet.Web.Data.csproj

cd Voxtet.Web.Data
dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj


dotnet new classlib -n Voxtet.Web.Domain -o Voxtet.Web.Domain -f netcoreapp3.0
REM classlib -f netcoreapp2.2 | netstandard2.0 (Default: netstandard2.0)

dotnet new mvc -n Voxtet.Web.Mvc -o Voxtet.Web.Mvc
dotnet sln add Voxtet.Web.Mvc/Voxtet.Web.Mvc.csproj

dotnet new xunit -n Voxtet.Web.Test -o Voxtet.Web.Test
dotnet sln add Voxtet.Web.Test/Voxtet.Web.Test.csproj


```
