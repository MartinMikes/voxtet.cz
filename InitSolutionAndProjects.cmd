REM Create Solution
dotnet new sln

REM Create All Projects
dotnet new webapi -n Voxtet.Web.Api -o Voxtet.Web.Api
dotnet new classlib -n Voxtet.Web.Data -o Voxtet.Web.Data -f netcoreapp3.0
dotnet new classlib -n Voxtet.Web.Domain -o Voxtet.Web.Domain -f netcoreapp3.0
dotnet new mvc -n Voxtet.Web.Mvc -o Voxtet.Web.Mvc
dotnet new xunit -n Voxtet.Web.Test -o Voxtet.Web.Test

REM Add Projects to Solution
dotnet sln add Voxtet.Web.Api/Voxtet.Web.Api.csproj
dotnet sln add Voxtet.Web.Data/Voxtet.Web.Data.csproj
dotnet sln add Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
dotnet sln add Voxtet.Web.Mvc/Voxtet.Web.Mvc.csproj
dotnet sln add Voxtet.Web.Test/Voxtet.Web.Test.csproj

REM Add Projects references and/or packages

REM Voxtet.Web.Api
cd Voxtet.Web.Api
dotnet add reference ../Voxtet.Web.Data/Voxtet.Web.Data.csproj
dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
cd ..

REM Voxtet.Web.Data
cd Voxtet.Web.Data
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
REM dotnet add package Microsoft.EntityFrameworkCore.Design
REM Probably not necessary for dotnet 2.1+

dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
cd ..

REM Voxtet.Web.Domain
cd Voxtet.Web.Domain
REM dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
cd ..

REM Voxtet.Web.Mvc
cd Voxtet.Web.Mvc
dotnet add reference ../Voxtet.Web.Data/Voxtet.Web.Data.csproj
dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
cd ..

REM Voxtet.Web.Test
cd Voxtet.Web.Test
dotnet add reference ../Voxtet.Web.Data/Voxtet.Web.Data.csproj
dotnet add reference ../Voxtet.Web.Domain/Voxtet.Web.Domain.csproj
dotnet add reference ../Voxtet.Web.Mvc/Voxtet.Web.Mvc.csproj
cd ..
