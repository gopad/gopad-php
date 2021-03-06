# Gopad\TeamApi

All URIs are relative to *http://try.gopad.tech/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appendTeamToUser**](TeamApi.md#appendTeamToUser) | **POST** /teams/{team_id}/users | Assign a user to team
[**createTeam**](TeamApi.md#createTeam) | **POST** /teams | Create a new team
[**deleteTeam**](TeamApi.md#deleteTeam) | **DELETE** /teams/{team_id} | Delete a specific team
[**deleteTeamFromUser**](TeamApi.md#deleteTeamFromUser) | **DELETE** /teams/{team_id}/users | Remove a user from team
[**listTeamUsers**](TeamApi.md#listTeamUsers) | **GET** /teams/{team_id}/users | Fetch all users assigned to team
[**listTeams**](TeamApi.md#listTeams) | **GET** /teams | Fetch all available teams
[**permitTeamUser**](TeamApi.md#permitTeamUser) | **PUT** /teams/{team_id}/users | Update user perms for team
[**showTeam**](TeamApi.md#showTeam) | **GET** /teams/{team_id} | Fetch a specific team
[**updateTeam**](TeamApi.md#updateTeam) | **PUT** /teams/{team_id} | Update a specific team



## appendTeamToUser

> \Gopad\Model\GeneralError appendTeamToUser($teamId, $teamUser)

Assign a user to team

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$teamId = 'teamId_example'; // string | A team UUID or slug
$teamUser = new \Gopad\Model\TeamUserParams(); // \Gopad\Model\TeamUserParams | The team user data to assign

try {
    $result = $apiInstance->appendTeamToUser($teamId, $teamUser);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->appendTeamToUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **string**| A team UUID or slug |
 **teamUser** | [**\Gopad\Model\TeamUserParams**](../Model/TeamUserParams.md)| The team user data to assign |

### Return type

[**\Gopad\Model\GeneralError**](../Model/GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## createTeam

> \Gopad\Model\Team createTeam($team)

Create a new team

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$team = new \Gopad\Model\Team(); // \Gopad\Model\Team | The team data to create

try {
    $result = $apiInstance->createTeam($team);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->createTeam: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team** | [**\Gopad\Model\Team**](../Model/Team.md)| The team data to create |

### Return type

[**\Gopad\Model\Team**](../Model/Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## deleteTeam

> \Gopad\Model\GeneralError deleteTeam($teamId)

Delete a specific team

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$teamId = 'teamId_example'; // string | A team UUID or slug

try {
    $result = $apiInstance->deleteTeam($teamId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->deleteTeam: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **string**| A team UUID or slug |

### Return type

[**\Gopad\Model\GeneralError**](../Model/GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## deleteTeamFromUser

> \Gopad\Model\GeneralError deleteTeamFromUser($teamId, $teamUser)

Remove a user from team

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$teamId = 'teamId_example'; // string | A team UUID or slug
$teamUser = new \Gopad\Model\TeamUserParams(); // \Gopad\Model\TeamUserParams | The team user data to delete

try {
    $result = $apiInstance->deleteTeamFromUser($teamId, $teamUser);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->deleteTeamFromUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **string**| A team UUID or slug |
 **teamUser** | [**\Gopad\Model\TeamUserParams**](../Model/TeamUserParams.md)| The team user data to delete |

### Return type

[**\Gopad\Model\GeneralError**](../Model/GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## listTeamUsers

> \Gopad\Model\TeamUser[] listTeamUsers($teamId)

Fetch all users assigned to team

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$teamId = 'teamId_example'; // string | A team UUID or slug

try {
    $result = $apiInstance->listTeamUsers($teamId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->listTeamUsers: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **string**| A team UUID or slug |

### Return type

[**\Gopad\Model\TeamUser[]**](../Model/TeamUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## listTeams

> \Gopad\Model\Team[] listTeams()

Fetch all available teams

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->listTeams();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->listTeams: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\Gopad\Model\Team[]**](../Model/Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## permitTeamUser

> \Gopad\Model\GeneralError permitTeamUser($teamId, $teamUser)

Update user perms for team

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$teamId = 'teamId_example'; // string | A team UUID or slug
$teamUser = new \Gopad\Model\TeamUserParams(); // \Gopad\Model\TeamUserParams | The team user data to update

try {
    $result = $apiInstance->permitTeamUser($teamId, $teamUser);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->permitTeamUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **string**| A team UUID or slug |
 **teamUser** | [**\Gopad\Model\TeamUserParams**](../Model/TeamUserParams.md)| The team user data to update |

### Return type

[**\Gopad\Model\GeneralError**](../Model/GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## showTeam

> \Gopad\Model\Team showTeam($teamId)

Fetch a specific team

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$teamId = 'teamId_example'; // string | A team UUID or slug

try {
    $result = $apiInstance->showTeam($teamId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->showTeam: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **string**| A team UUID or slug |

### Return type

[**\Gopad\Model\Team**](../Model/Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## updateTeam

> \Gopad\Model\Team updateTeam($teamId, $team)

Update a specific team

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new Gopad\Api\TeamApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$teamId = 'teamId_example'; // string | A team UUID or slug
$team = new \Gopad\Model\Team(); // \Gopad\Model\Team | The team data to update

try {
    $result = $apiInstance->updateTeam($teamId, $team);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamApi->updateTeam: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **string**| A team UUID or slug |
 **team** | [**\Gopad\Model\Team**](../Model/Team.md)| The team data to update |

### Return type

[**\Gopad\Model\Team**](../Model/Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

