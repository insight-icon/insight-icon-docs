# insight-icon-docs 

Documentation for running public representative nodes for the ICON Blockchain. 

## About these docs 

This repo links to multiple other sub-repos that can be pulled together using a tool called 
[meta](https://github.com/mateodelnorte/meta).  To install meta run `npm i -g meta`.  To clone all the sub-repos run 
`meta git clone .` from the root of this repo.  To add your own sub-repo run `meta project import [folder] [repo url]`.
Check the `.meta` file to see attached projects.  Each night or build the repo website is updated. 

### List of Sub Repos 

- ICON 
    - [icon-service](https://github.com/icon-project/icon-service)
- Infrastructure 
    - [terraform-docs](https://github.com/robc-io/terraform-docs)
- Security Docs 
    - [YubiKey-Guide](https://github.com/robc-io/YubiKey-Guide)

## Development 

PRs welcome! Happy to include any docs into this doc tree either directly or as another repo. This is just a 
consolidation of docs. 

### Building the docs locally 

```
cd docs 
make clean && make html 
cd _build
python3 -m http.server 8080
```

### TTD 
- PRs on sub-repos to improve style
    - 
- Internationalization
    - Use [this](https://www.sphinx-doc.org/en/master/usage/advanced/intl.html)
    - Build out two different versions 
        - `sphinx-build -b html korean/html && sphinx-build -b html english/html` or something like that and hook in CI
- 


## Other 

### Redeploying these docs

If you want to replicate this documentation strategy, run the attached terraform deployment with the right variables 
populated for `account.tfvars` (see `/terraform/init.sh` for more information). Then by running `terragrunt apply` 
(you have to install that and terraform) in the `terraform/static-s3-acm` directory with the appropriate AWS keys, 
you will deploy infrastructure.  Then by registering with CircleCI, populating the AWS_DEFAULT_REGION and 
CLOUDFRONT_DISTRIBUTION_ID environment variables in CircleCI, you will then be able to easily customize the CI pipeline 
to stitch together sub-repos into this meta repo. 

