[TUNA official site](https://mirrors.tuna.tsinghua.edu.cn/help/pypi/)

it's too slow in pypi

so let's change the source to TUNA

TUNA is Tsinghua University TUNA Association


#for temporary use

```

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple some-package


```


#make TUNA your default pypi


```

pip install pip -U
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple


```

#if your network connection to the pip defualt source is poor , use this mirror station temporarily to upgrade pip 


```

pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U


```
