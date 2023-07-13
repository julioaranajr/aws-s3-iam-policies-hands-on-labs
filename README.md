# aws-s3-iam-policies-hands-on-labs


## Description

AWS Identity and Access Management (IAM) is a service that allows AWS customers to manage user access and permissions for the accounts and available APIs/services within AWS. IAM can manage users, security credentials (such as API access keys), and allow users to access AWS resources.

In this lab, we discover how security policies affect IAM users and groups, and we go further by implementing our own policies while also learning what a role is, how to create a role, and how to assume a role as a different user. An IAM role is similar to an IAM user, in that it is an AWS identity with permission policies that determine what the identity can and cannot do in AWS. However, instead of being uniquely associated with one person, a role is intended to be assumable by anyone who needs it. Also, a role does not have standard long-term credentials such as a password or access keys associated with it. Instead, when you assume a role, it provides you with temporary security credentials for your role session.

By the end of this lab, you will understand IAM policies and roles, and how assuming roles can assist in restricting users to specific AWS resources.

AWS Documentation: [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html).


## Objectives

Successfully complete this lab by achieving the following learning objectives:

Create the Correct S3 Restricted Policies and Roles

Perform the following tasks:

1. Create the `S3RestrictedPolicy` IAM policy. Ensure only the appconfig buckets are accessible.
   * Select the S3 service and all S3 actions
   * Select all resources except bucket
   * Add the appconfig bucket names to the policy
2. Create the `S3RestrictedRole` IAM role.
   * Set the trusted entity to another AWS account
   * Add your account ID
   * For permissions, select the S3RestrictedPolicy
3. Revoke the `AmazonS3FullAccess` access policy from the `developergroup`.
4. Attach the `S3RestrictedPolicy` to the `dev1` user.

Configure IAM So the dev3 User Can Assume the Role

Perform the following tasks:

1. Create the `AssumeS3Policy` IAM policy.
   * Select the STS service
   * Select AssumeRole under the write options
   * Add the S3RestrictedRole
2. Attach the `AssumeS3Policy` to the `dev3` user.
3. Assume the `S3RestrictedRole` as the `dev3` user.
   * Log in as the dev3 user
   * Switch roles to the S3RestrictedRole
   * Verify access in S3
