
# KPLabs Terraform Challenges

A collection of hands-on Terraform challenges designed to help you learn and practice Infrastructure as Code (IaC) concepts using AWS services. Each challenge focuses on different aspects of Terraform functionality and AWS resource management.

## 📚 Overview

This repository contains 4 progressive Terraform challenges that cover essential concepts from basic resource creation to advanced features like loops, dependencies, and data sources. Perfect for beginners looking to get hands-on experience with Terraform and AWS.

## 🚀 Prerequisites

Before starting these challenges, ensure you have:

- **AWS Account**: A valid AWS account with appropriate permissions
- **AWS CLI**: Installed and configured with your credentials
- **Terraform**: Version 1.0+ installed on your machine
- **Basic Knowledge**: Understanding of AWS services and Infrastructure as Code concepts

### AWS CLI Configuration

```bash
aws configure
# Enter your AWS Access Key ID, Secret Access Key, and preferred region
```

### Terraform Installation

Visit [Terraform Downloads](https://www.terraform.io/downloads.html) for installation instructions.

## 📁 Repository Structure

```text
kplabs-terraform-challenges/
├── challenge-1/          # AWS EIP (Elastic IP) basics
├── challenge-2/          # Security Groups with dependencies
├── challenge-3/          # EC2 instances with for_each loops
├── challenge-4/          # IAM resources with data sources
└── README.md            # This file
```

## 🎯 Challenges

### Challenge 1: AWS Elastic IP (EIP)

**📍 Directory:** `challenge-1/`  
**🎯 Learning Objectives:**

- Create your first AWS resource with Terraform
- Understand basic Terraform syntax and structure
- Learn about AWS Elastic IP addresses

**📋 What you'll build:**

- AWS Elastic IP in a VPC
- Basic provider configuration
- Variable usage for AWS region

**🔧 Key Concepts:**

- Resource blocks
- Provider configuration
- Variables and defaults

---

### Challenge 2: Security Groups with Dependencies

**📍 Directory:** `challenge-2/`  
**🎯 Learning Objectives:**

- Understand Terraform resource dependencies
- Work with AWS Security Groups
- Learn dependency management with `depends_on`

**📋 What you'll build:**

- AWS Security Group for a payment application
- Security group rules
- Resource dependencies between EIP and Security Group

**🔧 Key Concepts:**

- Resource dependencies (`depends_on`)
- AWS Security Groups
- Resource tagging

---

### Challenge 3: EC2 Instances with For-Each

**📍 Directory:** `challenge-3/`  
**🎯 Learning Objectives:**

- Master Terraform loops using `for_each`
- Create multiple resources dynamically
- Work with complex variable types (maps)

**📋 What you'll build:**

- Multiple EC2 instances using `for_each`
- Dynamic resource naming
- Map-based variable configuration

**🔧 Key Concepts:**

- `for_each` meta-argument
- Map variables
- Dynamic resource creation
- Resource naming patterns

---

### Challenge 4: IAM with Data Sources

**📍 Directory:** `challenge-4/`  
**🎯 Learning Objectives:**

- Use Terraform data sources
- Work with AWS IAM resources
- Understand data source vs resource differences

**📋 What you'll build:**

- IAM user with dynamic naming
- Data sources for AWS caller identity
- IAM users data source

**🔧 Key Concepts:**

- Data sources (`data` blocks)
- AWS IAM resources
- Dynamic resource naming with data
- Current AWS account information

## 🛠️ How to Use These Challenges

### Step-by-Step Instructions

1. **Clone the repository:**

   ```bash
   git clone https://github.com/jegorik/kplabs-terraform-challenges.git
   cd kplabs-terraform-challenges
   ```

2. **Navigate to a challenge directory:**

   ```bash
   cd challenge-1
   ```

3. **Initialize Terraform:**

   ```bash
   terraform init
   ```

4. **Review the configuration files:**
   - `providers.tf` - Provider configuration
   - `variables.tf` - Variable definitions
   - `*.tf` - Resource definitions

5. **Plan your deployment:**

   ```bash
   terraform plan
   ```

6. **Apply the configuration:**

   ```bash
   terraform apply
   ```

7. **Clean up resources:**

   ```bash
   terraform destroy
   ```

### 💡 Tips for Success

- **Start with Challenge 1** and progress sequentially
- **Read all `.tf` files** in each challenge before running commands
- **Understand each resource** before applying
- **Always run `terraform plan`** before `terraform apply`
- **Don't forget to clean up** with `terraform destroy` to avoid AWS charges
- **Experiment** with different variable values

## 🎓 Learning Path

1. **Beginner**: Start with Challenge 1 to understand basic Terraform syntax
2. **Intermediate**: Progress through Challenges 2-3 to learn dependencies and loops
3. **Advanced**: Complete Challenge 4 to master data sources and IAM

## 📝 Notes

- Each challenge is independent and can be run separately
- Make sure to destroy resources after each challenge to avoid unnecessary AWS charges
- Some resources may incur small AWS costs (typically under $1)
- All challenges use Terraform best practices and follow AWS security guidelines

## 🤝 Contributing

Feel free to contribute improvements, additional challenges, or documentation enhancements. Please ensure all contributions follow Terraform best practices.

## 📞 Support

If you encounter issues:

1. Check AWS credentials and permissions
2. Verify Terraform installation
3. Review AWS service limits in your account
4. Check the Terraform documentation for specific resources

## 📄 License

This project is intended for educational purposes. Please refer to the repository license for usage terms.

---

**Happy Learning with Terraform! 🚀**
