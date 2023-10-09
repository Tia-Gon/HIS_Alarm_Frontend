#!/bin/sh
flutter build web --web-renderer html &&
aws s3 sync ./build/web s3://gon.52g.academy/ --profile 52g-Bootcamp && 
aws cloudfront create-invalidation --distribution-id E2MACY56H1CEH5 --paths '/*' --profile 52g-Bootcamp