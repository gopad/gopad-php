# Gopad\ProfileApi

All URIs are relative to http://try.gopad.tech/api/v1.

Method | HTTP request | Description
------------- | ------------- | -------------
[**showProfile()**](ProfileApi.md#showProfile) | **GET** /profile/self | Retrieve an unlimited auth token
[**tokenProfile()**](ProfileApi.md#tokenProfile) | **GET** /profile/token | Retrieve an unlimited auth token
[**updateProfile()**](ProfileApi.md#updateProfile) | **PUT** /profile/self | Retrieve an unlimited auth token


## `showProfile()`

```php
showProfile(): \Gopad\Model\Profile
```

Retrieve an unlimited auth token

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\ProfileApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->showProfile();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProfileApi->showProfile: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Gopad\Model\Profile**](../Model/Profile.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `tokenProfile()`

```php
tokenProfile(): \Gopad\Model\AuthToken
```

Retrieve an unlimited auth token

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\ProfileApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->tokenProfile();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProfileApi->tokenProfile: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Gopad\Model\AuthToken**](../Model/AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateProfile()`

```php
updateProfile($profile): \Gopad\Model\Profile
```

Retrieve an unlimited auth token

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\ProfileApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$profile = new \Gopad\Model\Profile(); // \Gopad\Model\Profile | The profile data to update

try {
    $result = $apiInstance->updateProfile($profile);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProfileApi->updateProfile: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profile** | [**\Gopad\Model\Profile**](../Model/Profile.md)| The profile data to update |

### Return type

[**\Gopad\Model\Profile**](../Model/Profile.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
