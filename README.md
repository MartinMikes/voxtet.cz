# voxtet.cz

## Solution and Projects

How to generate Solution and all its Project references, list all `dotnet new` command help using:

```bash
dotnet new webapi -h
dotnet new mvc -h
REM --use-local-db
dotnet new classlib -h
dotnet new webapi -h
```

Then tune following scripts...

## Run Scripts

### Create Solution

```bash
dotnet new sln
```

### Create All Projects

```bash
dotnet new webapi -n Voxtet.Web.Api -o Voxtet.Web.Api
dotnet new classlib -n Voxtet.Web.Data -o Voxtet.Web.Data -f netcoreapp3.0
dotnet new classlib -n Voxtet.Web.Domain -o Voxtet.Web.Domain -f netcoreapp3.0
dotnet new mvc -n Voxtet.Web.Mvc -o Voxtet.Web.Mvc
dotnet new xunit -n Voxtet.Web.Test -o Voxtet.Web.Test
```

### Add Projects to Solution

```bash
dotnet sln add Voxtet.Web.Api/Voxtet.Web.Api.csproj
dotnet sln add Voxtet.Web.Data/Voxtet.Web.Data.csproj
dotnet sln add Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
dotnet sln add Voxtet.Web.Mvc/Voxtet.Web.Mvc.csproj
dotnet sln add Voxtet.Web.Test/Voxtet.Web.Test.csproj
```

### Add Projects references and/or packages

#### Voxtet.Web.Api

```bash
cd Voxtet.Web.Api
dotnet add reference ../Voxtet.Web.Data/Voxtet.Web.Data.csproj
dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
cd ..
```

#### Voxtet.Web.Data

```bash
cd Voxtet.Web.Data
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
REM dotnet add package Microsoft.EntityFrameworkCore.Design
REM Probably not necessary for dotnet 2.1+

dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
cd ..
```

#### Voxtet.Web.Domain

```bash
cd Voxtet.Web.Domain
REM dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
cd ..
```

#### Voxtet.Web.Mvc

```bash
cd Voxtet.Web.Mvc
dotnet add reference ../Voxtet.Web.Data/Voxtet.Web.Data.csproj
dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
cd ..
```

#### Voxtet.Web.Test

```bash
cd Voxtet.Web.Test
dotnet add reference ../Voxtet.Web.Data/Voxtet.Web.Data.csproj
dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
dotnet add reference ../Voxtet.Web.Mvc/Voxtet.Web.Mvc.csproj
cd ..
```
