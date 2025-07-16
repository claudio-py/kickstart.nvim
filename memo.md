# NEVER FORGET

## keys & features

```<C-f>```

- - it expands vim commands pane
- - enables vim motion on it
- - shows command history to run

how to substitute only a specific block of the buffer? simple! you just
highlight the entire block you need, then apply a regex to it as follow:
```:'<,'>s/\Vkey = "\*\w",\zs\ze/XXX/g```

- ```\V```
- - ok, this means very no magic, just regex as pure as possible
- ```\zs\ze/```
- - means the z start and the z end of the substitution block so anything
you type after that will be inserted betwen them

## issues that frequently happen

- Manually install Mason related softwares
