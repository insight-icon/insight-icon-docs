# P Rep Node Management 


## Dependencies 

TODO: Validate 
```
sudo apt-get install -y libssl-dev build-essential automake pkg-config libtool libffi-dev libgmp-dev libyaml-cpp-dev
sudo apt-get install -y python3.7-dev libsecp256k1-dev python3-pip 
sudo pip3 install preptools 
```


## preptools 

- [Github](https://github.com/icon-project/preptools)
- [Docs](https://www.icondev.io/docs/p-rep-tools-preptools-tutorial)



### Register Node 

`preptools registerPRep [options]`

Example json:
```json
{
    "name": "banana node",
    "country": "KOR",
    "city": "Seoul",
    "email": "banana@example.com",
    "website": "https://icon.banana.com",
    "details": "https://icon.banana.com/json",
    "p2pEndpoint": "node.example.com:7100"
}
```


