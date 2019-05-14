# Mocked AWS Organizations Service

This is dockerized Moto service configured for AWS ORganizations.

## Usage

Get image with the following Docker command:

```bash
	$ docker pull omigost/local-aws-organizations
```

Setup environment variables:
```bash
	AWS_ORGANIZATIONS_HOST: The host to advertise for listeners
	AWS_ORGANIZATIONS_PORT: The port to advertise for listeners
```

## Example docker-compose.yml

```yaml
version: '3'

s3:
  image: omigost/local-aws-organizations
  environment:
    - AWS_ORGANIZATIONS_HOST=10.0.1.0
  ports:
    - "5000:5000"
  networks:
    motonet:
      ipv4_address: 10.0.1.0

networks:                             
  motonet:                          
    driver: bridge                
    ipam:                         
      config:                       
        - subnet: 10.0.0.0/16   
```
