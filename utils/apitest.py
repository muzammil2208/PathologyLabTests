import requests
def check_api():
    url="https://ecommerce-playground.lambdatest.io/index.php?route=account/login"
    res=requests.get(url)
    if(res.status_code==200):
        return True
    else:
        return False
    
