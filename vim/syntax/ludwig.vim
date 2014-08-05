" Vim syntax file
" Language: Ludwig
" Maintainer: Jared Tobin

if exists("b:current_syntax")
  finish
endif

" https://stackoverflow.com/questions/12238305/vim-syntax-highlighting-and-certain-characters
setlocal iskeyword+=-
setlocal iskeyword+=.
syn case ignore

syntax keyword ludwigImport import

syntax match ludwigComment "\v#.*$"

syntax region braces start="{" end="}" fold transparent
syntax region quotes start=/"/ end=/"/ fold transparent

syntax match ludwigDeclaration "^\([A-Za-z0-9]\|-\)*:"

syntax keyword ludwigRecord ami 
syntax keyword ludwigRecord aws-az 
syntax keyword ludwigRecord az-member 
syntax keyword ludwigRecord connection-drain-time 
syntax keyword ludwigRecord cross-zone 
syntax keyword ludwigRecord description 
syntax keyword ludwigRecord dns 
syntax keyword ludwigRecord dns-hosted-zone 
syntax keyword ludwigRecord dns-record 
syntax keyword ludwigRecord health-check 
syntax keyword ludwigRecord health-check-interval 
syntax keyword ludwigRecord health-check-target 
syntax keyword ludwigRecord health-check-timeout 
syntax keyword ludwigRecord healthy-threshold 
syntax keyword ludwigRecord in-ports 
syntax keyword ludwigRecord key 
syntax keyword ludwigRecord listeners 
syntax keyword ludwigRecord load-balancer 
syntax keyword ludwigRecord load-balancer-name 
syntax keyword ludwigRecord load-balancers 
syntax keyword ludwigRecord network 
syntax keyword ludwigRecord out-ports 
syntax keyword ludwigRecord part 
syntax keyword ludwigRecord permission 
syntax keyword ludwigRecord permissions 
syntax keyword ludwigRecord pmc 
syntax keyword ludwigRecord region 
syntax keyword ludwigRecord role 
syntax keyword ludwigRecord scale-ceiling 
syntax keyword ludwigRecord scale-floor 
syntax keyword ludwigRecord scale-instance 
syntax keyword ludwigRecord scale-target 
syntax keyword ludwigRecord scaling 
syntax keyword ludwigRecord section 
syntax keyword ludwigRecord sections 
syntax keyword ludwigRecord security-groups 
syntax keyword ludwigRecord tones 
syntax keyword ludwigRecord unhealthy-threshold 
syntax keyword ludwigRecord venues 
syntax keyword ludwigRecord version 

syntax keyword ludwigBoolean true false

syntax keyword ec2Instance t1.micro m1.small m3.medium m3.large m3.xlarge m3.2xlarge
syntax keyword ec2Instance c3.large c3.xlarge c3.2xlarge c3.4xlarge c3.8xlarge
syntax keyword ec2Instance g2.2xlarge r3.large r3.xlarge r3.2xlarge r3.4xlarge
syntax keyword ec2Instance r3.8xlarge i2.xlarge i2.2xlarge i2.4xlarge i2.8xlarge
syntax keyword ec2Instance hs1.8xlarge

syntax keyword awsRegion us-east-1 us-west-1 us-west-2 eu-west-1 ap-southeast-1
syntax keyword awsRegion ap-southeast-2 ap-northeast-1 sa-east-1

highlight link ludwigImport PreProc
highlight link ludwigComment Comment
highlight link ludwigBoolean Boolean
highlight link ludwigDeclaration Function
highlight link ludwigRecord Keyword
highlight link ec2Instance Constant
highlight link awsRegion Constant

let b:current_syntax = "ludwig"

