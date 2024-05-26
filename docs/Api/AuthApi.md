# Gopad\AuthApi

All URIs are relative to https://try.gopad.eu/api/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**externalCallback()**](AuthApi.md#externalCallback) | **GET** /auth/{provider}/callback | Callback for external authentication |
| [**externalInitialize()**](AuthApi.md#externalInitialize) | **GET** /auth/{provider}/initialize | Initialize the external authentication |


## `externalCallback()`

```php
externalCallback($provider, $state, $code): \Gopad\Model\Notification
```

Callback for external authentication

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\AuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$provider = 'provider_example'; // string | An identifier for the auth provider
$state = 'state_example'; // string | Auth state
$code = 'code_example'; // string | Auth code

try {
    $result = $apiInstance->externalCallback($provider, $state, $code);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AuthApi->externalCallback: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **provider** | **string**| An identifier for the auth provider | |
| **state** | **string**| Auth state | [optional] |
| **code** | **string**| Auth code | [optional] |

### Return type

[**\Gopad\Model\Notification**](../Model/Notification.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `externalInitialize()`

```php
externalInitialize($provider, $state): \Gopad\Model\Notification
```

Initialize the external authentication

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\AuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$provider = 'provider_example'; // string | An identifier for the auth provider
$state = 'state_example'; // string | Auth state

try {
    $result = $apiInstance->externalInitialize($provider, $state);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AuthApi->externalInitialize: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **provider** | **string**| An identifier for the auth provider | |
| **state** | **string**| Auth state | [optional] |

### Return type

[**\Gopad\Model\Notification**](../Model/Notification.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
