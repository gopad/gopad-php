# Gopad\UserApi

All URIs are relative to https://try.gopad.eu/api/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**attachUserToTeam()**](UserApi.md#attachUserToTeam) | **POST** /users/{user_id}/teams | Assign a team to user |
| [**createUser()**](UserApi.md#createUser) | **POST** /users | Create a new user |
| [**deleteUser()**](UserApi.md#deleteUser) | **DELETE** /users/{user_id} | Delete a specific user |
| [**deleteUserFromTeam()**](UserApi.md#deleteUserFromTeam) | **DELETE** /users/{user_id}/teams | Remove a team from user |
| [**listUserTeams()**](UserApi.md#listUserTeams) | **GET** /users/{user_id}/teams | Fetch all teams assigned to user |
| [**listUsers()**](UserApi.md#listUsers) | **GET** /users | Fetch all available users |
| [**permitUserTeam()**](UserApi.md#permitUserTeam) | **PUT** /users/{user_id}/teams | Update team perms for user |
| [**showUser()**](UserApi.md#showUser) | **GET** /users/{user_id} | Fetch a specific user |
| [**updateUser()**](UserApi.md#updateUser) | **PUT** /users/{user_id} | Update a specific user |


## `attachUserToTeam()`

```php
attachUserToTeam($userId, $userTeamParams): \Gopad\Model\Notification
```

Assign a team to user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Cookie
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('Cookie', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Cookie', 'Bearer');

// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');


$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$userId = 'userId_example'; // string | A user identifier or slug
$userTeamParams = new \Gopad\Model\UserTeamParams(); // \Gopad\Model\UserTeamParams | The user team data to attach

try {
    $result = $apiInstance->attachUserToTeam($userId, $userTeamParams);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->attachUserToTeam: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **userId** | **string**| A user identifier or slug | |
| **userTeamParams** | [**\Gopad\Model\UserTeamParams**](../Model/UserTeamParams.md)| The user team data to attach | |

### Return type

[**\Gopad\Model\Notification**](../Model/Notification.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

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


// Configure API key authorization: Cookie
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('Cookie', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Cookie', 'Bearer');

// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');


$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
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

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **user** | [**\Gopad\Model\User**](../Model/User.md)| The user data to create | |

### Return type

[**\Gopad\Model\User**](../Model/User.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteUser()`

```php
deleteUser($userId): \Gopad\Model\Notification
```

Delete a specific user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Cookie
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('Cookie', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Cookie', 'Bearer');

// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');


$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$userId = 'userId_example'; // string | A user identifier or slug

try {
    $result = $apiInstance->deleteUser($userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->deleteUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **userId** | **string**| A user identifier or slug | |

### Return type

[**\Gopad\Model\Notification**](../Model/Notification.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteUserFromTeam()`

```php
deleteUserFromTeam($userId, $userTeamParams): \Gopad\Model\Notification
```

Remove a team from user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Cookie
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('Cookie', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Cookie', 'Bearer');

// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');


$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$userId = 'userId_example'; // string | A user identifier or slug
$userTeamParams = new \Gopad\Model\UserTeamParams(); // \Gopad\Model\UserTeamParams | The user team data to delete

try {
    $result = $apiInstance->deleteUserFromTeam($userId, $userTeamParams);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->deleteUserFromTeam: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **userId** | **string**| A user identifier or slug | |
| **userTeamParams** | [**\Gopad\Model\UserTeamParams**](../Model/UserTeamParams.md)| The user team data to delete | |

### Return type

[**\Gopad\Model\Notification**](../Model/Notification.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listUserTeams()`

```php
listUserTeams($userId, $search, $sort, $order, $limit, $offset): \Gopad\Model\UserTeams
```

Fetch all teams assigned to user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Cookie
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('Cookie', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Cookie', 'Bearer');

// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');


$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$userId = 'userId_example'; // string | A user identifier or slug
$search = 'search_example'; // string | Search query
$sort = 'sort_example'; // string | Sorting column
$order = 'order_example'; // string | Sorting order
$limit = 56; // int | Paging limit
$offset = 56; // int | Paging offset

try {
    $result = $apiInstance->listUserTeams($userId, $search, $sort, $order, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->listUserTeams: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **userId** | **string**| A user identifier or slug | |
| **search** | **string**| Search query | [optional] |
| **sort** | **string**| Sorting column | [optional] |
| **order** | **string**| Sorting order | [optional] |
| **limit** | **int**| Paging limit | [optional] |
| **offset** | **int**| Paging offset | [optional] |

### Return type

[**\Gopad\Model\UserTeams**](../Model/UserTeams.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listUsers()`

```php
listUsers($search, $sort, $order, $limit, $offset): \Gopad\Model\Users
```

Fetch all available users

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Cookie
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('Cookie', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Cookie', 'Bearer');

// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');


$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$search = 'search_example'; // string | Search query
$sort = 'sort_example'; // string | Sorting column
$order = 'order_example'; // string | Sorting order
$limit = 56; // int | Paging limit
$offset = 56; // int | Paging offset

try {
    $result = $apiInstance->listUsers($search, $sort, $order, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->listUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **search** | **string**| Search query | [optional] |
| **sort** | **string**| Sorting column | [optional] |
| **order** | **string**| Sorting order | [optional] |
| **limit** | **int**| Paging limit | [optional] |
| **offset** | **int**| Paging offset | [optional] |

### Return type

[**\Gopad\Model\Users**](../Model/Users.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `permitUserTeam()`

```php
permitUserTeam($userId, $userTeamParams): \Gopad\Model\Notification
```

Update team perms for user

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: Cookie
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('Cookie', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Cookie', 'Bearer');

// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');


$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$userId = 'userId_example'; // string | A user identifier or slug
$userTeamParams = new \Gopad\Model\UserTeamParams(); // \Gopad\Model\UserTeamParams | The user team data to update

try {
    $result = $apiInstance->permitUserTeam($userId, $userTeamParams);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->permitUserTeam: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **userId** | **string**| A user identifier or slug | |
| **userTeamParams** | [**\Gopad\Model\UserTeamParams**](../Model/UserTeamParams.md)| The user team data to update | |

### Return type

[**\Gopad\Model\Notification**](../Model/Notification.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

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


// Configure API key authorization: Cookie
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('Cookie', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Cookie', 'Bearer');

// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');


$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$userId = 'userId_example'; // string | A user identifier or slug

try {
    $result = $apiInstance->showUser($userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->showUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **userId** | **string**| A user identifier or slug | |

### Return type

[**\Gopad\Model\User**](../Model/User.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

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


// Configure API key authorization: Cookie
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('Cookie', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Cookie', 'Bearer');

// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');


$apiInstance = new Gopad\Api\UserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$userId = 'userId_example'; // string | A user identifier or slug
$user = new \Gopad\Model\User(); // \Gopad\Model\User | The user data to update

try {
    $result = $apiInstance->updateUser($userId, $user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UserApi->updateUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **userId** | **string**| A user identifier or slug | |
| **user** | [**\Gopad\Model\User**](../Model/User.md)| The user data to update | |

### Return type

[**\Gopad\Model\User**](../Model/User.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
