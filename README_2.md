##TIL

 20190528
 ### Git hub 연동 및 Push, Pull, Clone

 1. PC Git 설치
 https://git-scm.com/download/win

 2. 설치 후 cmd 명령 프롬토콜 실행(사용자 계정 등록)
    git --version	(hyphen 기호가 2개)
    git config --global user.name “duamkr”
    git config --global user.email duamkr@gmail.com

 3. cmd명령 프롬토콜로 연동하고자 하는 저장소의 경로 이동
    $ D:
    $ mkdir Workspace(workspace 폴더 생성 명령어)
    $ cd \Workspace\TIL
    $ git init(Working Drectory 설정, 숨김폴더로 init폴더 생성)

 4. 파일 업로드 및 확정(add, commit)
    $ git add . (파일 업로드, "." 점은 전체파일)
    $ git comit -m "등록된 파일의 이름"
     - git이 add명령어로 실행한 파일들을 인식, commit 명령어로 버전관리가 자동으로 됨

 5. git hub(web) repository 등록
    GitHub에서 추가한 repository 주소 복사
    $ git remote add origin "복사한 링크"(""제외)
     - fatal: remote origin already exists 의 오류가 발생할 수 있음 그럴떈
     - git remote rm origin 명령어를 입력하면 remote origin이 존재하기 때문에 지워짐

  6. git hub(web)에 Push
    $ git push -u origin master
     - 파일을 저장하는 명령어(최초 Push)
     - 한번 성공 후엔 $ git Push

  7. git hub(web) 에서 불러오기(Pull)
    $ git Pull

  8. 다른 저장소(새로운PC)에 디렉토리 연결하기(Clone)
     - $ git clone
