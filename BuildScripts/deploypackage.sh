#!/bin/bash
VersionNumber="0.0.${TRAVIS_BUILD_NUMBER}-alpha"

echo "VersionNumber: $VersionNumber"

if [ "$TRAVIS_BRANCH" == "master" ]; then         
     mono --runtime=v4.0.30319 .nuget/NuGet.exe Pack NSquared.AspNet.Identity.Google.nuspec -NonInteractive -Version ${VersionNumber} 
     mono --runtime=v4.0.30319 .nuget/NuGet.exe Push NSquared.AspNet.Identity.Google.${VersionNumber}.nupkg $NUGET_APIKEY -NonInteractive     
fi
