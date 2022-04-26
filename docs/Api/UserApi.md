# Gopad\UserApi

All URIs are relative to http://try.gopad.tech/api/v1.

Method | HTTP request | Description
------------- | ------------- | -------------
[**appendUserToTeam()**](UserApi.md#appendUserToTeam) | **POST** /users/{user_id}/teams | Assign a team to user
[**createUser()**](UserApi.md#createUser) | **POST** /users | Create a new user
[**deleteUser()**](UserApi.md#deleteUser) | **DELETE** /users/{user_id} | Delete a specific user
[**deleteUserFromTeam()**](UserApi.md#deleteUserFromTeam) | **DELETE** /users/{user_id}/teams | Remove a team from user
[**listUserTeams()**](UserApi.md#listUserTeams) | **GET** /users/{user_id}/teams | Fetch all teams assigned to user
[**listUsers()**](UserApi.md#listUsers) | **GET** /users | Fetch all available users
[**permitUserTeam()**](UserApi.md#permitUserTeam) | **PUT** /users/{user_id}/teams | Update team perms for user
[**showUser()**](UserApi.md#showUser) | **GET** /users/{user_id} | Fetch a specific user
[**updateUser()**](UserApi.md#updateUser) | **PUT** /users/{user_id} | Update a specific user


## `appendUserToTeam()`

```php
appendUserToTeam($userId, $userTeam): \Gopad\Model\GeneralError
```

Assign a team to user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$userId = 'userId_example'; // string | A user UUID or slug
$userTeam = new \Gopad\Model\UserTeamParams(); // \Gopad\Model\UserTeamParams | The user team data to assign

try {
    $result = $apiInstance->appendUserToTeam($userId, $userTeam);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->appendUserToTeam: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string**| A user UUID or slug |
 **userTeam** | [**\Gopad\Model\UserTeamParams**](../Model/UserTeamParams.md)| The user team data to assign |

### Return type

[**\Gopad\Model\GeneralError**](../Model/GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createUser()`

```php
createUser($user): \Gopad\Model\User
```

Create a new user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$user = new \Gopad\Model\User(); // \Gopad\Model\User | The user data to create

try {
    $result = $apiInstance->createUser($user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->createUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**\Gopad\Model\User**](../Model/User.md)| The user data to create |

### Return type

[**\Gopad\Model\User**](../Model/User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteUser()`

```php
deleteUser($userId): \Gopad\Model\GeneralError
```

Delete a specific user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$userId = 'userId_example'; // string | A user UUID or slug

try {
    $result = $apiInstance->deleteUser($userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->deleteUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string**| A user UUID or slug |

### Return type

[**\Gopad\Model\GeneralError**](../Model/GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteUserFromTeam()`

```php
deleteUserFromTeam($userId, $userTeam): \Gopad\Model\GeneralError
```

Remove a team from user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$userId = 'userId_example'; // string | A user UUID or slug
$userTeam = new \Gopad\Model\UserTeamParams(); // \Gopad\Model\UserTeamParams | The user team data to delete

try {
    $result = $apiInstance->deleteUserFromTeam($userId, $userTeam);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->deleteUserFromTeam: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string**| A user UUID or slug |
 **userTeam** | [**\Gopad\Model\UserTeamParams**](../Model/UserTeamParams.md)| The user team data to delete |

### Return type

[**\Gopad\Model\GeneralError**](../Model/GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listUserTeams()`

```php
listUserTeams($userId): \Gopad\Model\TeamUser[]
```

Fetch all teams assigned to user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$userId = 'userId_example'; // string | A user UUID or slug

try {
    $result = $apiInstance->listUserTeams($userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->listUserTeams: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string**| A user UUID or slug |

### Return type

[**\Gopad\Model\TeamUser[]**](../Model/TeamUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listUsers()`

```php
listUsers(): \Gopad\Model\User[]
```

Fetch all available users

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->listUsers();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->listUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Gopad\Model\User[]**](../Model/User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `permitUserTeam()`

```php
permitUserTeam($userId, $userTeam): \Gopad\Model\GeneralError
```

Update team perms for user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$userId = 'userId_example'; // string | A user UUID or slug
$userTeam = new \Gopad\Model\UserTeamParams(); // \Gopad\Model\UserTeamParams | The user team data to update

try {
    $result = $apiInstance->permitUserTeam($userId, $userTeam);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->permitUserTeam: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string**| A user UUID or slug |
 **userTeam** | [**\Gopad\Model\UserTeamParams**](../Model/UserTeamParams.md)| The user team data to update |

### Return type

[**\Gopad\Model\GeneralError**](../Model/GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `showUser()`

```php
showUser($userId): \Gopad\Model\User
```

Fetch a specific user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$userId = 'userId_example'; // string | A user UUID or slug

try {
    $result = $apiInstance->showUser($userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->showUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string**| A user UUID or slug |

### Return type

[**\Gopad\Model\User**](../Model/User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateUser()`

```php
updateUser($userId, $user): \Gopad\Model\User
```

Update a specific user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$userId = 'userId_example'; // string | A user UUID or slug
$user = new \Gopad\Model\User(); // \Gopad\Model\User | The user data to update

try {
    $result = $apiInstance->updateUser($userId, $user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->updateUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string**| A user UUID or slug |
 **user** | [**\Gopad\Model\User**](../Model/User.md)| The user data to update |

### Return type

[**\Gopad\Model\User**](../Model/User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
