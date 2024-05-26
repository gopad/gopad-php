# Gopad\TeamApi

All URIs are relative to https://try.gopad.eu/api/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**attachTeamToUser()**](TeamApi.md#attachTeamToUser) | **POST** /teams/{team_id}/users | Assign a user to team |
| [**createTeam()**](TeamApi.md#createTeam) | **POST** /teams | Create a new team |
| [**deleteTeam()**](TeamApi.md#deleteTeam) | **DELETE** /teams/{team_id} | Delete a specific team |
| [**deleteTeamFromUser()**](TeamApi.md#deleteTeamFromUser) | **DELETE** /teams/{team_id}/users | Remove a user from team |
| [**listTeamUsers()**](TeamApi.md#listTeamUsers) | **GET** /teams/{team_id}/users | Fetch all users assigned to team |
| [**listTeams()**](TeamApi.md#listTeams) | **GET** /teams | Fetch all available teams |
| [**permitTeamUser()**](TeamApi.md#permitTeamUser) | **PUT** /teams/{team_id}/users | Update user perms for team |
| [**showTeam()**](TeamApi.md#showTeam) | **GET** /teams/{team_id} | Fetch a specific team |
| [**updateTeam()**](TeamApi.md#updateTeam) | **PUT** /teams/{team_id} | Update a specific team |


## `attachTeamToUser()`

```php
attachTeamToUser($teamId, $teamUserParams): \Gopad\Model\Notification
```

Assign a user to team

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


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$teamId = 'teamId_example'; // string | A team identifier or slug
$teamUserParams = new \Gopad\Model\TeamUserParams(); // \Gopad\Model\TeamUserParams | The team user data to attach

try {
    $result = $apiInstance->attachTeamToUser($teamId, $teamUserParams);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->attachTeamToUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **teamId** | **string**| A team identifier or slug | |
| **teamUserParams** | [**\Gopad\Model\TeamUserParams**](../Model/TeamUserParams.md)| The team user data to attach | |

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

## `createTeam()`

```php
createTeam($team): \Gopad\Model\Team
```

Create a new team

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


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$team = new \Gopad\Model\Team(); // \Gopad\Model\Team | The team data to create

try {
    $result = $apiInstance->createTeam($team);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->createTeam: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **team** | [**\Gopad\Model\Team**](../Model/Team.md)| The team data to create | |

### Return type

[**\Gopad\Model\Team**](../Model/Team.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteTeam()`

```php
deleteTeam($teamId): \Gopad\Model\Notification
```

Delete a specific team

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


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$teamId = 'teamId_example'; // string | A team identifier or slug

try {
    $result = $apiInstance->deleteTeam($teamId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->deleteTeam: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **teamId** | **string**| A team identifier or slug | |

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

## `deleteTeamFromUser()`

```php
deleteTeamFromUser($teamId, $teamUserParams): \Gopad\Model\Notification
```

Remove a user from team

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


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$teamId = 'teamId_example'; // string | A team identifier or slug
$teamUserParams = new \Gopad\Model\TeamUserParams(); // \Gopad\Model\TeamUserParams | The team user data to delete

try {
    $result = $apiInstance->deleteTeamFromUser($teamId, $teamUserParams);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->deleteTeamFromUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **teamId** | **string**| A team identifier or slug | |
| **teamUserParams** | [**\Gopad\Model\TeamUserParams**](../Model/TeamUserParams.md)| The team user data to delete | |

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

## `listTeamUsers()`

```php
listTeamUsers($teamId, $search, $sort, $order, $limit, $offset): \Gopad\Model\TeamUsers
```

Fetch all users assigned to team

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


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$teamId = 'teamId_example'; // string | A team identifier or slug
$search = 'search_example'; // string | Search query
$sort = 'sort_example'; // string | Sorting column
$order = 'order_example'; // string | Sorting order
$limit = 56; // int | Paging limit
$offset = 56; // int | Paging offset

try {
    $result = $apiInstance->listTeamUsers($teamId, $search, $sort, $order, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->listTeamUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **teamId** | **string**| A team identifier or slug | |
| **search** | **string**| Search query | [optional] |
| **sort** | **string**| Sorting column | [optional] |
| **order** | **string**| Sorting order | [optional] |
| **limit** | **int**| Paging limit | [optional] |
| **offset** | **int**| Paging offset | [optional] |

### Return type

[**\Gopad\Model\TeamUsers**](../Model/TeamUsers.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listTeams()`

```php
listTeams($search, $sort, $order, $limit, $offset): \Gopad\Model\Teams
```

Fetch all available teams

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


$apiInstance = new Gopad\Api\TeamApi(
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
    $result = $apiInstance->listTeams($search, $sort, $order, $limit, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->listTeams: ', $e->getMessage(), PHP_EOL;
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

[**\Gopad\Model\Teams**](../Model/Teams.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `permitTeamUser()`

```php
permitTeamUser($teamId, $teamUserParams): \Gopad\Model\Notification
```

Update user perms for team

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


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$teamId = 'teamId_example'; // string | A team identifier or slug
$teamUserParams = new \Gopad\Model\TeamUserParams(); // \Gopad\Model\TeamUserParams | The team user data to update

try {
    $result = $apiInstance->permitTeamUser($teamId, $teamUserParams);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->permitTeamUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **teamId** | **string**| A team identifier or slug | |
| **teamUserParams** | [**\Gopad\Model\TeamUserParams**](../Model/TeamUserParams.md)| The team user data to update | |

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

## `showTeam()`

```php
showTeam($teamId): \Gopad\Model\Team
```

Fetch a specific team

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


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$teamId = 'teamId_example'; // string | A team identifier or slug

try {
    $result = $apiInstance->showTeam($teamId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->showTeam: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **teamId** | **string**| A team identifier or slug | |

### Return type

[**\Gopad\Model\Team**](../Model/Team.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateTeam()`

```php
updateTeam($teamId, $team): \Gopad\Model\Team
```

Update a specific team

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


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$teamId = 'teamId_example'; // string | A team identifier or slug
$team = new \Gopad\Model\Team(); // \Gopad\Model\Team | The team data to update

try {
    $result = $apiInstance->updateTeam($teamId, $team);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->updateTeam: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **teamId** | **string**| A team identifier or slug | |
| **team** | [**\Gopad\Model\Team**](../Model/Team.md)| The team data to update | |

### Return type

[**\Gopad\Model\Team**](../Model/Team.md)

### Authorization

[Cookie](../../README.md#Cookie), [Basic](../../README.md#Basic), [Header](../../README.md#Header)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
