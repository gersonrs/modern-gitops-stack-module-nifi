# Changelog

## [3.0.2](https://github.com/gersonrs/modern-gitops-stack-module-nifi/compare/v3.0.1...v3.0.2) (2026-11-23)


### 🔥 Bug Fixes

* route /nifi-api through the gateway ([#18](https://github.com/gersonrs/modern-gitops-stack-module-nifi/issues/18)) ([a6460d5](https://github.com/gersonrs/modern-gitops-stack-module-nifi/commit/a6460d53bf0a0b82725fdddb17abfdca08052669))

## [3.0.1](https://github.com/gersonrs/modern-gitops-stack-module-nifi/compare/v3.0.0...v3.0.1) (2026-11-23)


### 🔥 Bug Fixes

* create the driver-ip Service when only the HTTPRoute is enabled ([#16](https://github.com/gersonrs/modern-gitops-stack-module-nifi/issues/16)) ([ede06a8](https://github.com/gersonrs/modern-gitops-stack-module-nifi/commit/ede06a8b6f6dbe8b551e768aee5e62e14f5ce817))

## [3.0.0](https://github.com/gersonrs/modern-gitops-stack-module-nifi/compare/v2.0.0...v3.0.0) (2026-11-22)


### ⚠ BREAKING CHANGES

* the ingress object and its nifi-tls secret are gone; the host is now served by the Istio gateway.

### 🚀 New Features

* expose through the Istio gateway instead of Traefik ([#14](https://github.com/gersonrs/modern-gitops-stack-module-nifi/issues/14)) ([9714d9e](https://github.com/gersonrs/modern-gitops-stack-module-nifi/commit/9714d9e66bdbb0fb3a335db759b068a31ca2acbe))

## [2.0.0](https://github.com/gersonrs/modern-gitops-stack-module-nifi/compare/v1.5.0...v2.0.0) (2026-11-20)


### ⚠ BREAKING CHANGES

* provider major bumps and a stricter Terraform baseline; consumers must run `terraform init -upgrade`.

### 🚀 New Features

* add namespace_labels variable to all modules ([a3465f4](https://github.com/gersonrs/modern-gitops-stack-module-nifi/commit/a3465f43826300ff4b64361219aa9ed52aca71e9))
* upgrade charts, providers and Terraform baseline ([#11](https://github.com/gersonrs/modern-gitops-stack-module-nifi/issues/11)) ([ad4021c](https://github.com/gersonrs/modern-gitops-stack-module-nifi/commit/ad4021c580422e8ee7a1e4006d10a8aea0371c00))


### 📦 CI Improvements

* run release-please with GITHUB_TOKEN ([#12](https://github.com/gersonrs/modern-gitops-stack-module-nifi/issues/12)) ([8f36bcf](https://github.com/gersonrs/modern-gitops-stack-module-nifi/commit/8f36bcfb511690d2f2ca51f10714f56e9fe5d603))

## [1.5.0](https://github.com/GersonRS/modern-gitops-stack-module-nifi/compare/v1.4.0...v1.5.0) (2025-01-18)


### 🚀 New Features

* **chart:** minor update of dependencies on nifikop chart ([7f6551b](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/7f6551b2e31cc03c1ce01aaa4ff2d87936c9f81f))


### 📚 Documentation

* **terraform-docs:** generate docs and write to README.adoc ([bb909bf](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/bb909bfd4f2478f97ff4b6e4ad46e595fb0427d2))

## [1.4.0](https://github.com/GersonRS/modern-gitops-stack-module-nifi/compare/v1.3.0...v1.4.0) (2024-05-16)


### 🚀 New Features

* update nifikop chart version ([4295b44](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/4295b448a72360dc323c3452364661377d0c0038))


### 📚 Documentation

* **terraform-docs:** generate docs and write to README.adoc ([f2ac2e0](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/f2ac2e06fc37ecadc34a77bd1b414118e798566a))

## [1.3.0](https://github.com/GersonRS/modern-gitops-stack-module-nifi/compare/v1.2.0...v1.3.0) (2024-05-16)


### 🚀 New Features

* add nifikop chart and configutation ([6b3d927](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/6b3d92798262c818f9f99a01250d9f80499f516a))


### 🔥 Bug Fixes

* fix oidc authentication comment ([f3f5d1b](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/f3f5d1b7e12c3abdae2b2c8f589d522ca6fa5403))


### 📚 Documentation

* **terraform-docs:** generate docs and write to README.adoc ([57e491f](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/57e491f780241528533410951f29fd6aa3c7665b))

## [1.2.0](https://github.com/GersonRS/modern-gitops-stack-module-nifi/compare/v1.1.0...v1.2.0) (2024-05-16)


### 🚀 New Features

* disable oidc authentication ([05e254c](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/05e254c17c5e627020f2492e246fd0efcc3444d5))


### 📚 Documentation

* **terraform-docs:** generate docs and write to README.adoc ([a31826b](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/a31826b467d6f2ee61b86167222b022a90ba74bf))
* **terraform-docs:** generate docs and write to README.adoc ([7f7794a](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/7f7794a448abf74e28abe1ced86f6137da1ad2c4))
* update documentation ([02f7257](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/02f7257ece2afa117e9701fa89f215e1aded4a38))

## [1.1.0](https://github.com/GersonRS/modern-gitops-stack-module-nifi/compare/v1.0.0...v1.1.0) (2024-05-16)


### 🚀 New Features

* adjust module ([0636fa3](https://github.com/GersonRS/modern-gitops-stack-module-nifi/commit/0636fa37d25cd51c7b623c19a676b0bc6ac5a969))
