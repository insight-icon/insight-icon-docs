# insight-icon-docs 

Documentation for running public representative nodes for the ICON Blockchain. 

## About these docs 

This repo links to multiple other sub-repos that can be pulled together using a tool called 
[meta](https://github.com/mateodelnorte/meta).  To install meta run `npm i -g meta`.  To clone all the sub-repos run 
`meta git clone .` from the root of this repo.  To add your own sub-repo run `meta project import [folder] [repo url]`.
Check the `.meta` file to see attached projects.  Each night or build the repo website is updated. 


## Other 

### Redeploying these docs

If you want to replicate this documentation strategy, run the attached terraform deployment with the right variables 
populated for `account.tfvars` (see `/terraform/init.sh` for more information). Then by running `terragrunt apply` 
(you have to install that and terraform) in the `terraform/static-s3-acm` directory with the appropriate AWS keys, 
you will deploy infrastructure.  Then by registering with CircleCI, populating the AWS_DEFAULT_REGION and 
CLOUDFRONT_DISTRIBUTION_ID environment variables in CircleCI, you will then be able to easily customize the CI pipeline 
to stitch together sub-repos into this meta repo. 
