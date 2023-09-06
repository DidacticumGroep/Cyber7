<div align="center">
<h1 align="center">
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" />
<br>Cyber7
</h1>
<h3>◦ Cyber7: Empowering Tech Excellence</h3>
<h3>◦ Developed with the software and tools listed below.</h3>

<p align="center">
<img src="https://img.shields.io/badge/Terraform-7B42BC.svg?style&logo=Terraform&logoColor=white" alt="Terraform" />
<img src="https://img.shields.io/badge/Markdown-000000.svg?style&logo=Markdown&logoColor=white" alt="Markdown" />
</p>
<img src="https://img.shields.io/github/languages/top/DidacticumGroep/Cyber7?style&color=5D6D7E" alt="GitHub top language" />
<img src="https://img.shields.io/github/languages/code-size/DidacticumGroep/Cyber7?style&color=5D6D7E" alt="GitHub code size in bytes" />
<img src="https://img.shields.io/github/commit-activity/m/DidacticumGroep/Cyber7?style&color=5D6D7E" alt="GitHub commit activity" />
<img src="https://img.shields.io/github/license/DidacticumGroep/Cyber7?style&color=5D6D7E" alt="GitHub license" />
</div>

---

## 📒 Table of Contents
- [📒 Table of Contents](#-table-of-contents)
- [📍 Overview](#-overview)
- [⚙️ Features](#-features)
- [📂 Project Structure](#project-structure)
- [🧩 Modules](#modules)
- [🚀 Getting Started](#-getting-started)
- [🗺 Roadmap](#-roadmap)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)
- [👏 Acknowledgments](#-acknowledgments)

---


## 📍 Overview

This project aims to create a secure management platform for secrets in Kubernetes using Hashicorp Vault and Helm. It provisions a Kubernetes cluster on Azure, deploys Hashicorp Vault on it using Helm, and generates the necessary client certificate and kubeconfig file. The project's core functionalities include configuring providers for Azure, Helm, and Kubernetes, and setting up a Vault cluster using Azure Kubernetes Service (AKS). Its value proposition lies in providing a robust and secure solution for managing secrets within Kubernetes environments.

---

## ⚙️ Features

| Feature                | Description                           |
| ---------------------- | ------------------------------------- |
| **⚙️ Architecture**     | The codebase follows a modular architecture that leverages Azure, Helm, and Kubernetes to create and deploy a secure management platform for secrets in Kubernetes. The use of Terraform for infrastructure provisioning also highlights the infrastructure-as-code approach.    |
| **📖 Documentation**   | The repository includes inline code comments and clear file names that help understand the purpose of different components. However, more detailed documentation discussing the design rationale and decisions would be beneficial for onboarding new contributors.    |
| **🔗 Dependencies**    | The codebase depends on Azure, Helm, and Kubernetes for infrastructu

---


## 📂 Project Structure




---

## 🧩 Modules

<details closed><summary>Vault-artifactory</summary>

| File                                                                                                      | Summary                                                                                                                                                                                                                                                                                               |
| ---                                                                                                       | ---                                                                                                                                                                                                                                                                                                   |
| [main.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/main.tf)           | This code creates a Kubernetes cluster on Azure and deploys Hashicorp Vault on it using Helm. It also generates and saves the client certificate and kubeconfig file for the cluster.                                                                                                                 |
| [outputs.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/outputs.tf)     | This code generates the Kubernetes cluster VAULT configuration, including the client certificate and raw kube config.It also generates the Kubernetes cluster ARTIFACTORY configuration.                                                                                                              |
| [.dccache](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/.dccache)         | The code provides a secure management platform for secrets in Kubernetes using a specific configuration file, ensuring confidentiality and accessibility for the secrets.                                                                                                                             |
| [.dcignore](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/.dcignore)       | This code defines a set of glob rules for ignored files. It includes specific rules for various frameworks and languages such as Julia, CakePHP, Dart, Zephir, Magento, Python, Laravel, and many more. These rules help exclude certain files and directories from version control systems like Git. |
| [providers.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/providers.tf) | The code defines providers for Azure, Helm, and Kubernetes, enabling interactions with these technologies. The specified versions and configurations ensure compatibility and smooth functioning.                                                                                                     |
| [locals.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/locals.tf)       | This code sets up a Vault cluster using Azure Kubernetes Service (AKS). It provisions resources, runs custom commands, and deploys HashiCorp Vault using Helm.                                                                                                                                        |

</details>

---

## 🚀 Getting Started

### ✔️ Prerequisites

Before you begin, ensure that you have the following prerequisites installed:
> - `ℹ️ Requirement 1`
> - `ℹ️ Requirement 2`
> - `ℹ️ ...`

### 📦 Installation

1. Clone the Cyber7 repository:
```sh
git clone https://github.com/DidacticumGroep/Cyber7
```

2. Change to the project directory:
```sh
cd Cyber7
```

3. Install the dependencies:
```sh
terraform init
```

### 🎮 Using Cyber7

```sh
terraform apply
```

### 🧪 Running Tests
```sh
Insert test command.
```

---


## 🗺 Roadmap

> - [X] `ℹ️  Task 1: Implement X`
> - [ ] `ℹ️  Task 2: Refactor Y`
> - [ ] `ℹ️ ...`


---

## 🤝 Contributing

Contributions are always welcome! Please follow these steps:
1. Fork the project repository. This creates a copy of the project on your account that you can modify without affecting the original project.
2. Clone the forked repository to your local machine using a Git client like Git or GitHub Desktop.
3. Create a new branch with a descriptive name (e.g., `new-feature-branch` or `bugfix-issue-123`).
```sh
git checkout -b new-feature-branch
```
4. Make changes to the project's codebase.
5. Commit your changes to your local branch with a clear commit message that explains the changes you've made.
```sh
git commit -m 'Implemented new feature.'
```
6. Push your changes to your forked repository on GitHub using the following command
```sh
git push origin new-feature-branch
```
7. Create a new pull request to the original project repository. In the pull request, describe the changes you've made and why they're necessary.
The project maintainers will review your changes and provide feedback or merge them into the main branch.

---

## 📄 License

This project is licensed under the `ℹ️  INSERT-LICENSE-TYPE` License. See the [LICENSE](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository) file for additional info.

---

## 👏 Acknowledgments

> - `ℹ️  List any resources, contributors, inspiration, etc.`

---
