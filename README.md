# Tanka Issue

`tk export` fails on tanka versions=>0.14 in some scenaros:


I've provided 2 tanka environments (`working` and `broken`)


`tk show` and `tk eval` work on both.

`tk export` fails on the `broken` environment


## Broken Example

```
$ tk --version
tk version v0.17.1
```

```
$ mkdir /tmp/broken-export
$ tk export /tmp/broken-export ./environments/broken
```
```
Error: evaluating jsonnet: RUNTIME ERROR: Field does not exist: app
	/tmp/tanka-export-issue/environments/broken/main.jsonnet:10:16-29	
	<std>:1366:30-34	thunk from <thunk from <function <anonymous>>>
	<std>:1361:20-21	thunk from <function <anonymous>>
	<std>:32:25-26	thunk from <function <anonymous>>
	<std>:32:16-27	function <anonymous>
	<std>:1361:8-22	function <anonymous>
	<std>:1366:20-35	thunk from <function <anonymous>>
	<std>:1353:10-11	function <isContent>
	<std>:1366:10-36	function <anonymous>
	<std>:(1363:34)-(1367:6)	
	<std>:(1363:34)-(1367:6)	
	<std>:1366:20-35	thunk from <function <anonymous>>
	<std>:1353:10-11	function <isContent>
	<std>:1366:10-36	function <anonymous>
	<std>:(1363:34)-(1367:6)	
	<std>:(1363:34)-(1367:6)	
	./environments/broken:(5:3)-(28:4)	function <noDataEnv>
	./environments/broken:30:1-16	$
	During evaluation	
```


## Working Example

```
$ tk --version
tk version v0.17.1
```

```
$ mkdir /tmp/working-export
$ tk export /tmp/working-export ./environments/working
```

```
Loading environments/working from /tmp/tanka-export-issue/environments/working/main.jsonnet
```
