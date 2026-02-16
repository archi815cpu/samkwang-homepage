@echo off
chcp 65001
echo ==========================================
echo       CEO 이미지 자동 배포 스크립트
echo ==========================================

if not exist "ceo_greeting.jpg" (
    echo [ERROR] 'ceo_greeting.jpg' 파일을 찾을 수 없습니다!
    echo.
    echo 1. 사용할 이미지 파일의 이름을 'ceo_greeting.jpg'로 변경해주세요.
    echo 2. 이 파일을 홈페이지 폴더에 넣어주세요.
    echo 3. 그 다음, 다시 이 스크립트를 실행해주세요.
    echo.
    pause
    exit /b
)

echo [INFO] 이미지 파일을 확인했습니다. 배포를 시작합니다...
echo.

echo 1. 최신 변경 사항 가져오기 (git pull)...
git pull origin main

echo 2. 이미지 파일 추가 (git add)...
git add ceo_greeting.jpg

echo 3. 커밋 생성 (git commit)...
git commit -m "Add/Update CEO greeting image"

echo 4. GitHub로 푸시 (git push)...
git push origin main

echo.
echoString ==========================================
echo [SUCCESS] 모든 과정이 완료되었습니다!
echo 이제 GitHub 페이지에서 이미지를 확인할 수 있습니다.
echo ==========================================
pause
