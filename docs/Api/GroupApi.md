# Gopad\GroupApi



All URIs are relative to https://try.gopad.eu/api/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**attachGroupToUser()**](GroupApi.md#attachGroupToUser) | **POST** /groups/{group_id}/users | Attach a user to group |
| [**createGroup()**](GroupApi.md#createGroup) | **POST** /groups | Create a new group |
| [**deleteGroup()**](GroupApi.md#deleteGroup) | **DELETE** /groups/{group_id} | Delete a specific group |
| [**deleteGroupFromUser()**](GroupApi.md#deleteGroupFromUser) | **DELETE** /groups/{group_id}/users | Unlink a user from group |
| [**listGroupUsers()**](GroupApi.md#listGroupUsers) | **GET** /groups/{group_id}/users | Fetch all users attached to group |
| [**listGroups()**](GroupApi.md#listGroups) | **GET** /groups | Fetch all available groups |
| [**permitGroupUser()**](GroupApi.md#permitGroupUser) | **PUT** /groups/{group_id}/users | Update user perms for group |
| [**showGroup()**](GroupApi.md#showGroup) | **GET** /groups/{group_id} | Fetch a specific group |
| [**updateGroup()**](GroupApi.md#updateGroup) | **PUT** /groups/{group_id} | Update a specific group |


## `attachGroupToUser()`

```php
attachGroupToUser($groupId, $permitGroupUserRequest): \Gopad\Model\Notification
```

Attach a user to group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer authorization: Bearer
$config = Gopad\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Gopad\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$groupId = 'groupId_example'; // string | A group identifier or slug
$permitGroupUserRequest = new \Gopad\Model\PermitGroupUserRequest(); // \Gopad\Model\PermitGroupUserRequest | The group user data to permit

try {
    $result = $apiInstance->attachGroupToUser($groupId, $permitGroupUserRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->attachGroupToUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groupId** | **string**| A group identifier or slug | |
| **permitGroupUserRequest** | [**\Gopad\Model\PermitGroupUserRequest**](../Model/PermitGroupUserRequest.md)| The group user data to permit | |

### Return type

[**\Gopad\Model\Notification**](../Model/Notification.md)

### Authorization

[Basic](../../README.md#Basic), [Header](../../README.md#Header), [Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createGroup()`

```php
createGroup($createGroupRequest): \Gopad\Model\Group
```

Create a new group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer authorization: Bearer
$config = Gopad\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Gopad\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$createGroupRequest = new \Gopad\Model\CreateGroupRequest(); // \Gopad\Model\CreateGroupRequest | The group data to create

try {
    $result = $apiInstance->createGroup($createGroupRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->createGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **createGroupRequest** | [**\Gopad\Model\CreateGroupRequest**](../Model/CreateGroupRequest.md)| The group data to create | |

### Return type

[**\Gopad\Model\Group**](../Model/Group.md)

### Authorization

[Basic](../../README.md#Basic), [Header](../../README.md#Header), [Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteGroup()`

```php
deleteGroup($groupId): \Gopad\Model\Notification
```

Delete a specific group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer authorization: Bearer
$config = Gopad\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Gopad\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$groupId = 'groupId_example'; // string | A group identifier or slug

try {
    $result = $apiInstance->deleteGroup($groupId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->deleteGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groupId** | **string**| A group identifier or slug | |

### Return type

[**\Gopad\Model\Notification**](../Model/Notification.md)

### Authorization

[Basic](../../README.md#Basic), [Header](../../README.md#Header), [Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteGroupFromUser()`

```php
deleteGroupFromUser($groupId, $deleteGroupFromUserRequest): \Gopad\Model\Notification
```

Unlink a user from group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer authorization: Bearer
$config = Gopad\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Gopad\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$groupId = 'groupId_example'; // string | A group identifier or slug
$deleteGroupFromUserRequest = new \Gopad\Model\DeleteGroupFromUserRequest(); // \Gopad\Model\DeleteGroupFromUserRequest | The group user data to unlink

try {
    $result = $apiInstance->deleteGroupFromUser($groupId, $deleteGroupFromUserRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->deleteGroupFromUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groupId** | **string**| A group identifier or slug | |
| **deleteGroupFromUserRequest** | [**\Gopad\Model\DeleteGroupFromUserRequest**](../Model/DeleteGroupFromUserRequest.md)| The group user data to unlink | |

### Return type

[**\Gopad\Model\Notification**](../Model/Notification.md)

### Authorization

[Basic](../../README.md#Basic), [Header](../../README.md#Header), [Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listGroupUsers()`

```php
listGroupUsers($groupId, $search, $sort, $order, $limit, $offset): \Gopad\Model\ListGroupUsers200Response
```

Fetch all users attached to group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer authorization: Bearer
$config = Gopad\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Gopad\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$groupId = 'groupId_example'; // string | A group identifier or slug
$search = 'search_example'; // string | Search query
$sort = 'sort_example'; // string | Sorting column
$order = 'asc'; // string | Sorting order
$limit = 100; // int | Paging limit
$offset = 0; // int | Paging offset

try {
    $result = $apiInstance->listGroupUsers($groupId, $search, $sort, $order, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->listGroupUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groupId** | **string**| A group identifier or slug | |
| **search** | **string**| Search query | [optional] |
| **sort** | **string**| Sorting column | [optional] |
| **order** | **string**| Sorting order | [optional] [default to &#39;asc&#39;] |
| **limit** | **int**| Paging limit | [optional] [default to 100] |
| **offset** | **int**| Paging offset | [optional] [default to 0] |

### Return type

[**\Gopad\Model\ListGroupUsers200Response**](../Model/ListGroupUsers200Response.md)

### Authorization

[Basic](../../README.md#Basic), [Header](../../README.md#Header), [Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listGroups()`

```php
listGroups($search, $sort, $order, $limit, $offset): \Gopad\Model\ListGroups200Response
```

Fetch all available groups

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer authorization: Bearer
$config = Gopad\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Gopad\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$search = 'search_example'; // string | Search query
$sort = 'sort_example'; // string | Sorting column
$order = 'asc'; // string | Sorting order
$limit = 100; // int | Paging limit
$offset = 0; // int | Paging offset

try {
    $result = $apiInstance->listGroups($search, $sort, $order, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->listGroups: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **search** | **string**| Search query | [optional] |
| **sort** | **string**| Sorting column | [optional] |
| **order** | **string**| Sorting order | [optional] [default to &#39;asc&#39;] |
| **limit** | **int**| Paging limit | [optional] [default to 100] |
| **offset** | **int**| Paging offset | [optional] [default to 0] |

### Return type

[**\Gopad\Model\ListGroups200Response**](../Model/ListGroups200Response.md)

### Authorization

[Basic](../../README.md#Basic), [Header](../../README.md#Header), [Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `permitGroupUser()`

```php
permitGroupUser($groupId, $permitGroupUserRequest): \Gopad\Model\Notification
```

Update user perms for group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer authorization: Bearer
$config = Gopad\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Gopad\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$groupId = 'groupId_example'; // string | A group identifier or slug
$permitGroupUserRequest = new \Gopad\Model\PermitGroupUserRequest(); // \Gopad\Model\PermitGroupUserRequest | The group user data to permit

try {
    $result = $apiInstance->permitGroupUser($groupId, $permitGroupUserRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->permitGroupUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groupId** | **string**| A group identifier or slug | |
| **permitGroupUserRequest** | [**\Gopad\Model\PermitGroupUserRequest**](../Model/PermitGroupUserRequest.md)| The group user data to permit | |

### Return type

[**\Gopad\Model\Notification**](../Model/Notification.md)

### Authorization

[Basic](../../README.md#Basic), [Header](../../README.md#Header), [Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `showGroup()`

```php
showGroup($groupId): \Gopad\Model\Group
```

Fetch a specific group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer authorization: Bearer
$config = Gopad\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Gopad\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$groupId = 'groupId_example'; // string | A group identifier or slug

try {
    $result = $apiInstance->showGroup($groupId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->showGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groupId** | **string**| A group identifier or slug | |

### Return type

[**\Gopad\Model\Group**](../Model/Group.md)

### Authorization

[Basic](../../README.md#Basic), [Header](../../README.md#Header), [Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateGroup()`

```php
updateGroup($groupId, $createGroupRequest): \Gopad\Model\Group
```

Update a specific group

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: Basic
$config = Gopad\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');

// Configure API key authorization: Header
$config = Gopad\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Gopad\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer authorization: Bearer
$config = Gopad\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Gopad\Api\GroupApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$groupId = 'groupId_example'; // string | A group identifier or slug
$createGroupRequest = new \Gopad\Model\CreateGroupRequest(); // \Gopad\Model\CreateGroupRequest | The group data to update

try {
    $result = $apiInstance->updateGroup($groupId, $createGroupRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GroupApi->updateGroup: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groupId** | **string**| A group identifier or slug | |
| **createGroupRequest** | [**\Gopad\Model\CreateGroupRequest**](../Model/CreateGroupRequest.md)| The group data to update | |

### Return type

[**\Gopad\Model\Group**](../Model/Group.md)

### Authorization

[Basic](../../README.md#Basic), [Header](../../README.md#Header), [Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
