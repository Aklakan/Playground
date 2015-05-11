# Playground - XSB

Download & build XSB according to instructions at

http://xsb.sourceforge.net/


```pl
xsb

... (start up messages)

| ?- ['rdfs_entailments'].
[rdfs_entailments loaded]

yes
| ?- triple(S, P, O).

... (keep iterating solutions by pressing semi-colon - i.e. ';')


| ?- halt.
```
