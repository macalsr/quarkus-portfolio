# 🚀 Quarkus Portfolio – CI/CD & Containers

![CI](https://github.com/macalsr/quarkus-portfolio/actions/workflows/ci.yml/badge.svg)](https://github.com/macalsr/quarkus-portfolio/actions/workflows/ci.yml)

Projeto de portfólio para estudo e prática de **Java 21**, **Quarkus**, **CI/CD**, **Docker** e, futuramente, **Kubernetes**.  
O foco é demonstrar **boas práticas de engenharia**, automação e pipeline próximo da realidade de mercado.

---

## 🧠 Objetivos do projeto

- Construir uma API simples e bem testada
- Implementar **CI completo** (build + testes)
- Containerizar a aplicação com **Docker (multi-stage)**
- Automatizar build de imagem no CI
- Publicar imagem em registry
- Evoluir para **deploy com Kubernetes**

---

## 🛠️ Tecnologias utilizadas

- Java 21
- Quarkus
- Maven
- JUnit / RestAssured
- Docker
- GitHub Actions
- GitHub Container Registry (GHCR)

---

## 📐 Arquitetura (atual)

- API REST simples
- Endpoints stateless
- Build com Maven
- Container Docker com multi-stage build
- Pipeline CI automatizado no GitHub Actions

Fluxo atual:

```
Commit → GitHub Actions → Testes → Build → Docker Build
```

*(Deploy será adicionado na próxima fase com Kubernetes)*

---

## 🔗 Endpoints disponíveis

| Método | Endpoint | Descrição |
|------|--------|-----------|
| GET  | /hello | Endpoint de teste |
| GET  | /health | Health check |

---

## ▶️ Rodando localmente (sem Docker)

### Pré-requisitos
- Java 21
- Maven

```bash
./mvnw quarkus:dev
```

Acesse:
- http://localhost:8080/hello
- http://localhost:8080/health

---

## 🧪 Rodando os testes

```bash
./mvnw test
```

---

## 🐳 Rodando com Docker

### Build da imagem
```bash
docker build -t quarkus-portfolio .
```

### Executar container
```bash
docker run --rm -p 8080:8080 quarkus-portfolio
```

---

## 🤖 CI/CD

O projeto utiliza **GitHub Actions** para:

- Executar testes automaticamente
- Validar build com Maven
- Buildar imagem Docker em ambiente Linux
- Garantir que a branch `main` permaneça estável

O pipeline roda em:
- `push` na `main`
- `pull_request` para `main`

---

## 📦 Imagem Docker

A aplicação é empacotada usando **Docker multi-stage build**, garantindo:
- Imagem final menor
- Build reproduzível
- Pronto para ambientes cloud e Kubernetes

---

## 🚀 Próximos passos (roadmap)

- [ ] Publicação automática da imagem no GHCR
- [ ] Manifestos Kubernetes (Deployment + Service)
- [ ] Health probes (liveness/readiness)
- [ ] ConfigMaps e Secrets
- [ ] Deploy em cluster local (kind ou k3d)
- [ ] Observabilidade básica

---

## 👩‍💻 Autora

**Maria**  
Projeto de estudo com foco em **engenharia de software, CI/CD e cloud-native**.

---

## 📝 Observações

Este repositório foi construído de forma **incremental**, priorizando:
- base sólida
- automação desde o início
- aprendizado prático com erros reais de CI/CD  
