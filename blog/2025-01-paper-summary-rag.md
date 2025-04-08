# 📄 논문 제목: Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks

- **저자:** Patrick Lewis et al.
- **발표 연도:** 2020
- **링크:** [https://arxiv.org/abs/2005.11401](https://arxiv.org/abs/2005.11401)

---

## 📌 TL;DR

> 이 논문은 LLM이 외부 지식에 접근할 수 있도록 Retriever와 Generator를 결합한 RAG 구조를 제안하며, 다양한 QA 태스크에서 기존 SOTA를 뛰어넘는 성능을 보였다.

---

## 🔍 핵심 개념 요약

| 구성 요소 | 설명 |
|-----------|------|
| Retriever | Dense Passage Retrieval(DPR)을 활용해 관련 문서 검색 |
| Generator | BART 기반 언어모델로 답변 생성 |
| RAG-Sequence | 여러 문서를 통합하여 답변 생성 |
| RAG-Token    | 문서별 토큰 단위로 생성 결과 결합 |

---

## 🧪 실험 결과

- **데이터셋:** Natural Questions, TriviaQA, WebQuestions 등
- **비교 모델:** GPT, T5, BART 등
- **성능:** 모든 데이터셋에서 기존 SOTA 대비 높은 정확도

---

## 💡 인사이트 & 한계

- ✅ Knowledge-intensive task에 효과적
- ✅ Retriever와 Generator를 분리 설계해 유연성 확보
- ⚠️ Retriever 성능에 크게 의존
- ⚠️ 실시간 지식 업데이트에는 한계

---

## 🧭 개인 프로젝트와의 연결점

> 회의록 기반 RAG 시스템에 적용 가능.  
> 프롬프트-문서 매칭 실험에서 baseline 구조로 활용 가능.  
> 문서 embedding 방식 비교 실험 설계 참고 가능.

---

## 📚 참고자료

- [공식 논문](https://arxiv.org/abs/2005.11401)
- [Facebook RAG GitHub](https://github.com/facebookresearch/DPR)
- [HuggingFace RAG Docs](https://huggingface.co/docs/transformers/model_doc/rag)

