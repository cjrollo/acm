README.md

1. clone this repo
	a. git clone ...blah/blah/blah.git
2. (optionally) generate key file
	a. ec2 create-security-group --group-name devenv-sg --description "security group for development environment"
	b. ec2 authorize-security-group-ingress --group-name devenv-sg --protocol tcp --port 22 --cidr 146.197.246.76/32
	c. ec2 create-key-pair --key-name devenv-key --query 'KeyMaterial' --output text > ~/.aws/devenv-key.pem
3. (optionally) copy AWS credentials/config to ~/.aws
4. build the container
	a. docker build --rm -t rollo/myawscli .
5. create an alias and source it
	a. echo 'alias dckr='docker run --volume ~/.aws:/root/.aws rollo/myawscli'' >> ~/.bash_profile
	b. source ~/.bash_profile
6. run the container (dckr <sub-command> <options>)	<-- NOTE: check the ENTRYPOINT in the Dockerfile
	a. dckr ec2 run-instances --image-id ami-29ebb519 --security-group-ids "sg-7cf8b01b" --count 1 --instance-type t2.micro --key-name devenv-key --query 'Instances[0].InstanceId'
	b. dckr ec2 describe-instances --instance-ids "i-337776f4" --query 'Reservations[0].Instances[0].PublicIpAddress'
	c. ssh -i devenv-key.pem ubuntu@"54.213.190.237"

NOTES: 
1. you can generate a valid CIDR using http://www.ipaddressguide.com/cidr
2. make note of the Instance ID
3. make note of the Security Group ID
4. make note of the Public IP Address for the Instance

Inspirations....
1. https://github.com/anigeo/docker-awscli
2. https://github.com/cgswong/docker-aws
3. https://github.com/iron-io/dockers/tree/master/python/python3
4. http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html

