<div align="center">
<h1 align="center">
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" />
<br>Cyber7
</h1>
<h3>◦ Cyber7: Unlock the Future</h3>
<h3>◦ Developed with the software and tools listed below.</h3>

<p align="center">
<img src="https://img.shields.io/badge/Terraform-7B42BC.svg?style&logo=Terraform&logoColor=white" alt="Terraform" />
<img src="https://img.shields.io/badge/Markdown-000000.svg?style&logo=Markdown&logoColor=white" alt="Markdown" />
<img src="https://img.shields.io/badge/JSON-000000.svg?style&logo=JSON&logoColor=white" alt="JSON" />
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

The project is focused on provisioning resources in Azure and deploying various applications, such as an ARM template for schedule requests and HashiCorp Vault on an Azure Kubernetes Cluster. It allows for customization and flexibility through the use of variables and providers in Terraform. The purpose of the project is to streamline the process of resource provisioning and deployment, improving efficiency and making it easier to manage and secure applications. Its value proposition lies in simplifying the setup and management of Azure and Kubernetes resources, as well as providing a secure solution for storing and managing secrets.

---

## ⚙️ Features

| Feature                | Description                           |
| ---------------------- | ------------------------------------- |
| **⚙️ Architecture**     | The codebase follows a modular architecture, with separate files for each feature or functionality. It utilizes Terraform for provisioning Azure resources and deploying applications on a Kubernetes cluster. The main.tf files handle provisioning, while the provider.tf files configure providers, and the variables.tf files set up customizable parameters. The codebase also includes a .dccache file to manage a secret file and a .dcignore file to specify files and directories to be ignored. |
| **📖 Documentation**   | The codebase lacks comprehensive documentation. While there are inline comments explaining the purpose of each file, there is room for improvement in terms of high-level system documentation, architectural diagrams, and explanation of design decisions. Developers working on the codebase would benefit from additional documentation. |
| **🔗 Dependencies**    | The codebase relies on external libraries such as Azure Resource Manager and Azure Active Directory for provisioning and managing Azure resources. It also utilizes Hashicorp Vault and Helm for deploying Vault on the Kubernetes

---


## 📂 Project Structure




---

## 🧩 Modules

<details closed><summary>Aad-pim-terraform-main</summary>

| File                                                                                                           | Summary                                                                                                                                                                                                                                  |
| ---                                                                                                            | ---                                                                                                                                                                                                                                      |
| [main.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/AAD-PIM-terraform-main/main.tf)           | This code provisions an Azure AD Group, generates a random deployment name, and deploys a schedule request using an ARM template. It assigns the "owner" role to the AD Group and sets its start date based on a time rotation schedule. |
| [provider.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/AAD-PIM-terraform-main/provider.tf)   | The code configures the required providers for Terraform, specifying versions for Azure Resource Manager and Azure Active Directory.                                                                                                     |
| [variables.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/AAD-PIM-terraform-main/variables.tf) | This code sets up variables for location, request type, and rotation days. It allows for customization of parameters for a specific operation. The goal is to provide flexibility and streamline the code for better efficiency.         |

</details>

<details closed><summary>Vault-artifactory</summary>

| File                                                                                                      | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ---                                                                                                       | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| [main.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/main.tf)           | The code provisions an Azure Kubernetes Cluster and deploys Hashicorp Vault on it. It also generates and stores the client certificate and kubeconfig locally. Provisioning and executing local commands are commented out. Helm release for Vault is also commented out in the code.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| [outputs.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/outputs.tf)     | The code outputs key components of two Kubernetes clusters: VAULT and ARTIFACTORY. It includes client certificates and the raw kube config for both clusters.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| [.dccache](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/.dccache)         | The code manages a secret file located at "c:/Users/MaikelvanAmen/Secret Management POC/kube.config". The file is being tracked using a hash algorithm and version control, with the latest version identified as "8f765e03b550eef2f56bb40b2c664bdf4982b3de1fc5be32be3b72ca458039aa".                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| [.dcignore](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/.dcignore)       | This code contains a set of glob rules that specify files and directories to be ignored. These rules are used to ignore files during version control, build processes, and other operations. The rules cover various technologies and frameworks, such as Julia, CakePHP, KiCad, Dart, PlayFramework, Zephir, RhodesRhomobile, AppEngine, Textpattern, ExpressionEngine, CMake, Qt, Yeoman, ExtJs, R, Python, Magento, CodeIgniter, Haskell, Elm, Erlang, ForceDotCom, Plone, AppceleratorTitanium, ChefCookbook, Objective-C, Opa, Smalltalk, SeamGen, Xilinx, Strapi, Snap, Logtalk, SPFx, Vue, NWjs, Cordova, Bazel, AltiumDesigner, ThinkPHP, Jigsaw, Bitrix, CodeSniffer, Pimcore, Magento1, Magento2, Drupal7, InforCMS, Kentico, KellyFramewor, ROS2, Splunk, Racket, JupyterNotebooks, Nikola, Red, AtmelStudio, IAR_EWARM, esp-idf, Phoenix, JBoss4, JBoss6, Hugo, Puppet, Kotlin, Composer, Android, Nim, Actionscript, Maven, Agda, Unity, Symphony, Godot, Java, Swift, Lilypond, Joomla, SymphonyCMS, ZendFramework, C, Node, LemonStand, Waf, TeX, Rust, Yii, Mercury, Scrivener, Clojure, Phalcon, Typo3, Jenkins_Home, MetaProgrammingSystem, CraftCMS, CFWheels, OCaml, Ruby, Perl, Elisp, Jekyll, D, Packer, Umbraco, Kohana, and Nanoc. |
| [providers.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/providers.tf) | The code sets up the necessary providers for working with Azure and Kubernetes using Terraform. It includes configuration for Azurerm, Helm, and Kubernetes providers, allowing for smooth integration and management of resources in Azure and Kubernetes environments.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [locals.tf](https://github.com/DidacticumGroep/Cyber7/blob/main/Maikel/Vault-Artifactory/locals.tf)       | The code deploys a HashiCorp Vault cluster on Azure, sets up a Kubernetes namespace, and installs Vault using Helm with custom configurations. It also executes PowerShell commands to configure the Kubernetes context and create the namespace.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |

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

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->