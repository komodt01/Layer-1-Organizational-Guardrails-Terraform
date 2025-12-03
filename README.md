# Multicloud Organizational Guardrails – Layer 1 (Terraform)

This repository contains Terraform examples for implementing **Layer 1 governance controls** across AWS, Azure, Google Cloud, and Oracle Cloud Infrastructure (OCI).  
Layer 1 represents the **organizational and governance boundary** of a multicloud architecture.

Layer 1 establishes cloud-wide guardrails such as:

- Organization/folder/management group hierarchy  
- Tenancy boundaries and compartments  
- Enterprise controls applied at the organizational scope  
- Restrictive policies and baseline governance  
- Mandatory security posture for all subordinate accounts/projects  

These templates focus on realistic patterns seen in enterprise cloud governance models such as:

- **AWS Control Tower Service Control Policies (SCPs)**  
- **Azure Management Groups + Azure Policies**  
- **GCP Organization Policies**  
- **OCI IAM Policies and Compartment Guardrails**

Each cloud includes **baseline guardrails** (recommended defaults) and **strict guardrails** (high-security org-level controls used in regulated environments).

---

## 📁 Repository Structure

```
README.md
Security.md
compliance.md

/AWS
    /Terraform
        baseline_guardrails.tf
        strict_guardrails.tf

/Azure
    /Terraform
        baseline_guardrails.tf
        strict_guardrails.tf

/GCP
    /Terraform
        baseline_guardrails.tf
        strict_guardrails.tf

/OCI
    /Terraform
        baseline_guardrails.tf
        strict_guardrails.tf
```

---

## 🧩 Purpose of Layer 1

Layer 1 defines the **non-negotiable controls** that sit at the top of the cloud environment.  
These apply to **every account, subscription, project, or compartment**, ensuring:

- Regulatory alignment  
- Preventive guardrails  
- Consistent identity boundaries  
- Security by default  
- Reduced misconfiguration risk  

Layer 1 ensures architecture stays aligned with:

- Organizational security policies  
- Compliance frameworks (NIST, ISO, CIS, PCI)  
- Governance, risk, and compliance (GRC) objectives  

---

## 🔒 Baseline vs Strict Guardrails

**Baseline Guardrails**  
Focus on foundational governance patterns such as:  
- Enforcing MFA  
- Preventing root account misuse  
- Mandatory tagging  
- Restricting networking defaults  
- Minimum encryption requirements  

**Strict Guardrails**  
Used by high-security organizations (financial, healthcare, government):  
- Region restrictions  
- No public bucket configuration  
- Controlled SKU or instance types  
- Mandatory HTTPS and encryption enforcement  
- No external IPs (GCP)  
- No public compartments/buckets (OCI)  

---

## 🏗️ What This Repository Demonstrates

This repo is designed to show architectural leadership:  
- How enterprise cloud guardrails differ across AWS, Azure, GCP, and OCI  
- How to separate governance layers  
- How org-level controls enforce consistent posture  
- How Terraform manages multicloud governance at scale  

This is **not** meant to be production-ready code, but intentionally structured to demonstrate **architecture thinking**, governance principles, and multicloud expertise.

---

## 📄 Next Layers (Optional Future Additions)

- **Layer 2 – Landing Zones / Networking Foundations**  
- **Layer 3 – Workload Guardrails / Application Security**  
- **Layer 4 – Logging / Monitoring / SIEM**  
- **Layer 5 – Compliance Automation**  

---

