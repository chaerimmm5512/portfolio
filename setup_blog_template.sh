#!/bin/bash

# 사용자 입력 받기
echo "📄 논문 제목을 입력하세요 (예: Retrieval-Augmented Generation):"
read title
echo "🔗 논문 링크를 입력하세요:"
read link
echo "🗓 작성 연월 (예: 2025-04):"
read date

# 파일명 만들기
filename=$(echo "$date-$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-').md")

# blog 디렉토리 생성 (없으면)
mkdir -p blog

# 템플릿 내용 생성
cat <<EOF > blog/$filename
# 📄 논문 제목: $title

- **저자:** (저자 입력)
- **발표 연도:** (연도)
- **링크:** [$link]($link)

---

## 📌 TL;DR

> 이 논문은 ...

---

## 🔍 핵심 개념 요약

| 구성 요소 | 설명 |
|-----------|------|
| Retriever | 관련 문서 검색 |
| Generator | 답변 생성 |

---

## 🧪 실험 결과

- 데이터셋:
- 비교 모델:
- 주요 성능:

---

## 💡 인사이트 & 한계

- ✅ 강점:
- ⚠️ 한계:

---

## 🧭 개인 프로젝트와의 연결점

> 어떤 아이디어를 얻었고, 어떻게 내 프로젝트에 활용할 수 있을지 정리해보세요.

---

## 📚 참고자료

- 논문 링크: [$link]($link)
EOF

echo "✅ blog/$filename 생성 완료!"
