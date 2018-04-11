#!/bin/bash
set -ex

flutter build apk --${build_type}
    
envman add --key BITRISE_APK_PATH --value "`pwd`/build/app/outputs/apk/app.apk"

exit 0
