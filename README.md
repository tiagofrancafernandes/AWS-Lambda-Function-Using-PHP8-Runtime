# Using repo

## Plain function file
```php
// examples/app/index.php

function func(array $event): string
{
    return json_encode([
        'statusCode' => 200, // or other
        'headers' => [
            'any_header' => 'value'
        ],
        'body' => 'Success',
    ]);
}
```

## CMD params

> Se o arquivo for `examples/app/index.php` e a função alvo for `func`, o **CMD** precisa ser `examples/app/index.func`.
>
> Exemplo:

```Dockerfile

CMD [ "examples/app/index.func" ]
```

## Rebuild and deployment via CLI

> **( ! )** First copy `utils/build-and-push-demo.sh` to `utils/build-and-push.sh` and change info.
```sh
bash ./utils/build-and-push.sh
```
