//
//  NetworkApi.m
//  GetSwagger
//
//  Created by delims on 2020/08/03.
//  Copyright © 2020 delims. All rights reserved.

#import "NetworkApi.h"

#pragma mark AlarmSetting 作业报警设置服务 
/** 
@brief 查询单个报警设置信息
@code
请求路径: /task/api/AlarmSettings/{alarmSettingsId}
请求方法: get
参数列表:

alarmSettingsId string  
@endcode
*/ 
extern NSString * const kTaskApiAlarmSettingsAlarmSettingsId;

/** 
@brief 删除报警设置数据
@code
请求路径: /task/api/AlarmSettings/{alarmSettingsId}
请求方法: delete
参数列表:

alarmSettingsId string  
@endcode
*/ 
extern NSString * const kTaskApiAlarmSettingsAlarmSettingsId_delete;

/** 
@brief 查询所有报警类型
@code
请求路径: /task/api/AlarmSettings/AlarmTypes
请求方法: get
@endcode
*/ 
extern NSString * const kTaskApiAlarmSettingsAlarmTypes;

/** 
@brief 增加作业数据
@code
请求路径: /task/api/AlarmSettings
请求方法: post
参数列表:

LevelName    string  报警级别名称 
Message      string  报警信息模板 
CreatedTime  string  创建时间 
MaxValue     number  作业数据最大值 
Type         integer 报警类型 
ToolType     integer 机具类型 
TypeName     string  报警类型名称 
StatusName   string  数据状态名称 
Level        integer 报警级别 
Duration     integer 持续时长（秒） 
Id           string   
Unit         string  计量单位 公分、公斤/亩等 
Description  string  描述 
ToolTypeName string  机具类型名称 
AlarmType    string  报警类型 
TaskType     integer 作业类型 
OrgId        string  组织Id 
Status       integer 数据状态 
MinValue     number  作业数据最小值 
TaskTypeName string  任务类型名称 
@endcode
*/ 
extern NSString * const kTaskApiAlarmSettings_post;

/** 
@brief 查询所有作业报警设置（分页）
@code
请求路径: /task/api/AlarmSettings
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
StartTime  string  开始时间（yyyy-MM-dd HH:mm:ss） 
EndTime    string  结束时间（yyyy-MM-dd HH:mm:ss） 
TaskType   integer 任务类型 
AlarmType  integer 报警类型 
AlarmLevel integer 报警级别 
Operator   string  名称 
TaskStatus integer 任务状态 
VehicleId  string  车辆Id 
LandId     string  地块Id 
@endcode
*/ 
extern NSString * const kTaskApiAlarmSettings;

/** 
@brief 修改报警设置数据
@code
请求路径: /task/api/AlarmSettings
请求方法: patch
参数列表:

LevelName    string  报警级别名称 
Message      string  报警信息模板 
CreatedTime  string  创建时间 
MaxValue     number  作业数据最大值 
Type         integer 报警类型 
ToolType     integer 机具类型 
TypeName     string  报警类型名称 
StatusName   string  数据状态名称 
Level        integer 报警级别 
Duration     integer 持续时长（秒） 
Id           string   
Unit         string  计量单位 公分、公斤/亩等 
Description  string  描述 
ToolTypeName string  机具类型名称 
AlarmType    string  报警类型 
TaskType     integer 作业类型 
OrgId        string  组织Id 
Status       integer 数据状态 
MinValue     number  作业数据最小值 
TaskTypeName string  任务类型名称 
@endcode
*/ 
extern NSString * const kTaskApiAlarmSettings_patch;

/** 
@brief 查询所有报警级别
@code
请求路径: /task/api/AlarmSettings/AlarmLevel
请求方法: get
@endcode
*/ 
extern NSString * const kTaskApiAlarmSettingsAlarmLevel;


#pragma mark User 用户服务 
/** 
@brief 查询多个用户信息
@code
请求路径: /sys/api/Users/Users
请求方法: post
@endcode
*/ 
extern NSString * const kSysApiUsersUsers;

/** 
@brief 用户修改密码
@code
请求路径: /sys/api/Users/{userId}/{passWord}
请求方法: patch
@endcode
*/ 
extern NSString * const kSysApiUsersUserIdPassWord;

/** 
@brief 增加用户信息（登录名称重复，同一机构下用户名称不能重复）
@code
请求路径: /sys/api/Users
请求方法: post
参数列表:

ViewVehiclePermission array   农机数据权限集合(显示用) 
PositionId            string  岗位Id 
Permission            array   数据权限集合 
CreatedTimeStr        string  创建时间 
CreatedTime           string  创建时间 
RoleId                string  角色Id 
OrgName               string  机构名称 
Password              string  密码 
Name                  string  用户名 
DataRoleId            string  数据角色权限 
Gender                integer 性别类型 
UserDataPermission    array   用户数据 
StatusName            string  状态名称 
LoginName             string  登录名称 
ViewLandPermission    array   地块数据权限集合(显示用) 
ViewCropPermission    array   作物数据权限集合(显示用) 
Id                    string  用户id 
Phone                 string  电话 
GenderName            string  性别名称 
LandTotal             integer 已选地块数 
PositionName          string  岗位名称 
UserType              integer 用户注册类型 
OrgId                 string  组织Id 
Status                integer 数据状态 
CropTotal             integer 已选作物数 
VehicleTotal          integer 已选车辆数 
@endcode
*/ 
extern NSString * const kSysApiUsers_post;

/** 
@brief 修改用户信息（同一机构下用户名称不能重复）
@code
请求路径: /sys/api/Users
请求方法: patch
参数列表:

ViewVehiclePermission array   农机数据权限集合(显示用) 
PositionId            string  岗位Id 
Permission            array   数据权限集合 
CreatedTimeStr        string  创建时间 
CreatedTime           string  创建时间 
RoleId                string  角色Id 
OrgName               string  机构名称 
Password              string  密码 
Name                  string  用户名 
DataRoleId            string  数据角色权限 
Gender                integer 性别类型 
UserDataPermission    array   用户数据 
StatusName            string  状态名称 
LoginName             string  登录名称 
ViewLandPermission    array   地块数据权限集合(显示用) 
ViewCropPermission    array   作物数据权限集合(显示用) 
Id                    string  用户id 
Phone                 string  电话 
GenderName            string  性别名称 
LandTotal             integer 已选地块数 
PositionName          string  岗位名称 
UserType              integer 用户注册类型 
OrgId                 string  组织Id 
Status                integer 数据状态 
CropTotal             integer 已选作物数 
VehicleTotal          integer 已选车辆数 
@endcode
*/ 
extern NSString * const kSysApiUsers_patch;

/** 
@brief 查询所有用户（分页）
@code
请求路径: /sys/api/Users
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
StartTime  string  开始时间（yyyy-MM-dd） 
EndTime    string  结束时间（yyyy-MM-dd） 
Status     integer 状态 
@endcode
*/ 
extern NSString * const kSysApiUsers;

/** 
@brief 管理员修改用户岗位与数据权限
@code
请求路径: /sys/api/Users/Position
请求方法: patch
参数列表:

UserId         string  用户id 
DataPermission array   数据权限 
Status         integer 数据状态 
PositionId     string  岗位id 
@endcode
*/ 
extern NSString * const kSysApiUsersPosition;

/** 
@brief 获取用户信息
@code
请求路径: /sys/api/Users/{userId}
请求方法: get
参数列表:

userId string 用户id 
@endcode
*/ 
extern NSString * const kSysApiUsersUserId;

/** 
@brief 查询多个用户信息
@code
请求路径: /sys/api/Users/{orgId}/{positionType}
请求方法: get
参数列表:

orgId        string   
positionType integer  
@endcode
*/ 
extern NSString * const kSysApiUsersOrgIdPositionType;


#pragma mark Area 区域服务 
/** 
@brief 获取所有省、市、区编码
@code
请求路径: /sys/api/Areas
请求方法: get
@endcode
*/ 
extern NSString * const kSysApiAreas;


#pragma mark VehicleType 车辆类型服务 
/** 
@brief 根据车型Id获取车型信息
@code
请求路径: /vehicle/api/VehicleTypes/{vehicleTypeId}
请求方法: get
参数列表:

vehicleTypeId string 车型Id 
@endcode
*/ 
extern NSString * const kVehicleApiVehicleTypesVehicleTypeId;

/** 
@brief 根据车型Id删除车型信息
@code
请求路径: /vehicle/api/VehicleTypes/{vehicleTypeId}
请求方法: delete
参数列表:

vehicleTypeId string 车型Id 
@endcode
*/ 
extern NSString * const kVehicleApiVehicleTypesVehicleTypeId_delete;

/** 
@brief 根据机构Id获取所有车型
@code
请求路径: /vehicle/api/Organizations/{orgId}/VehicleTypes
请求方法: get
参数列表:

orgId string 机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiOrganizationsOrgIdVehicleTypes;

/** 
@brief 获取车型分页信息
@code
请求路径: /vehicle/api/VehicleTypes
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiVehicleTypes;

/** 
@brief 根据车型Id编辑车型信息
@code
请求路径: /vehicle/api/VehicleTypes
请求方法: patch
参数列表:

BackSpeed   number  倒车速度(公里/小时） 
TurnSpeed   number  转弯速度(公里/小时) 
BrandName   string  品牌名称 
Id          string  标识 
RoadSpeed   number  公路行驶速度(公里/小时) 
Speed       number  行驶速度(公里/小时) 
CreatedTime string  创建时间 
Description string  备注 
BrandId     string  品牌Id 
TypeName    string  车型名称 
Size        number  尺寸 
OrgId       string  机构Id 
PowerRate   integer 额定功率 
@endcode
*/ 
extern NSString * const kVehicleApiVehicleTypes_patch;

/** 
@brief 添加车型信息
@code
请求路径: /vehicle/api/VehicleTypes
请求方法: post
参数列表:

BackSpeed   number  倒车速度(公里/小时） 
TurnSpeed   number  转弯速度(公里/小时) 
BrandName   string  品牌名称 
Id          string  标识 
RoadSpeed   number  公路行驶速度(公里/小时) 
Speed       number  行驶速度(公里/小时) 
CreatedTime string  创建时间 
Description string  备注 
BrandId     string  品牌Id 
TypeName    string  车型名称 
Size        number  尺寸 
OrgId       string  机构Id 
PowerRate   integer 额定功率 
@endcode
*/ 
extern NSString * const kVehicleApiVehicleTypes_post;

/** 
@brief 根据机构Id和品牌Id获取车辆类型列表
@code
请求路径: /vehicle/api/Organizations/{orgId}/Brands/{brandId}/VehicleTypes
请求方法: get
参数列表:

orgId   string  
brandId string  
@endcode
*/ 
extern NSString * const kVehicleApiOrganizationsOrgIdBrandsBrandIdVehicleTypes;


#pragma mark Land 地块服务 
/** 
@brief 获取地块分页信息
@code
请求路径: /land/api/Lands
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kLandApiLands;

/** 
@brief 根据地块Id编辑地块信息
@code
请求路径: /land/api/Lands
请求方法: patch
参数列表:

CreatedTime string 创建时间 
Lat         number 地块中心点的纬度 
Id          string 地块Id 
Name        string 地块名称 
Lng         number 地块中心点的经度 
Lenth       number 周长 
Outline     string 地块轮廓 
Address     string 位置 
Area        number 地块面积 
Soil        string 土壤 
ManagerName string 机构负责人 
OrgName     string 机构名称 
OrgId       string 机构Id 
CreatedBy   string 创建者 
@endcode
*/ 
extern NSString * const kLandApiLands_patch;

/** 
@brief 添加地块信息
@code
请求路径: /land/api/Lands
请求方法: post
参数列表:

CreatedTime string 创建时间 
Lat         number 地块中心点的纬度 
Id          string 地块Id 
Name        string 地块名称 
Lng         number 地块中心点的经度 
Lenth       number 周长 
Outline     string 地块轮廓 
Address     string 位置 
Area        number 地块面积 
Soil        string 土壤 
ManagerName string 机构负责人 
OrgName     string 机构名称 
OrgId       string 机构Id 
CreatedBy   string 创建者 
@endcode
*/ 
extern NSString * const kLandApiLands_post;

/** 
@brief 根据机构Ids获取地块列表
@code
请求路径: /land/api/Land
请求方法: post
@endcode
*/ 
extern NSString * const kLandApiLand;

/** 
@brief 根据机构Id获取地块信息（不分页）
@code
请求路径: /land/api/Organizations/{orgId}/Lands
请求方法: get
参数列表:

orgId string  
@endcode
*/ 
extern NSString * const kLandApiOrganizationsOrgIdLands;

/** 
@brief 根据机构Id获取地块分布信息
@code
请求路径: /land/api/Organizations/{orgId}/Lands/Distribute
请求方法: get
参数列表:

orgId string 机构Id 
@endcode
*/ 
extern NSString * const kLandApiOrganizationsOrgIdLandsDistribute;

/** 
@brief 根据经纬度获取位置
@code
请求路径: /land/api/AddressByCoordinate
请求方法: post
@endcode
*/ 
extern NSString * const kLandApiAddressByCoordinate;

/** 
@brief 根据机构Id获取地块统计信息
@code
请求路径: /land/api/Lands/Statistic
请求方法: get
参数列表:

orgId string  
@endcode
*/ 
extern NSString * const kLandApiLandsStatistic;

/** 
@brief 根据地块Id获取地块信息
@code
请求路径: /land/api/Lands/{landId}
请求方法: get
参数列表:

landId string 地块Id 
@endcode
*/ 
extern NSString * const kLandApiLandsLandId;

/** 
@brief 根据地块Id删除地块信息
@code
请求路径: /land/api/Lands/{landId}
请求方法: delete
参数列表:

landId string 地块Id 
@endcode
*/ 
extern NSString * const kLandApiLandsLandId_delete;

/** 
@brief 导入地块
@code
请求路径: /land/api/Organizations/{orgId}/ImportLands
请求方法: post
@endcode
*/ 
extern NSString * const kLandApiOrganizationsOrgIdImportLands;

/** 
@brief 下载地块导入模板
@code
请求路径: /land/api/LandTemplate
请求方法: get
@endcode
*/ 
extern NSString * const kLandApiLandTemplate;


#pragma mark Terminals 终端服务 
/** 
@brief 根据机构Id获取当前机构下未绑定的终端列表
@code
请求路径: /vehicle/api/Organizations/{orgId}/Terminals/UnBind
请求方法: get
参数列表:

orgId string  
@endcode
*/ 
extern NSString * const kVehicleApiOrganizationsOrgIdTerminalsUnBind;

/** 
@brief 下载导入终端和Sim卡模板
@code
请求路径: /vehicle/api/TerminalTemplate
请求方法: get
@endcode
*/ 
extern NSString * const kVehicleApiTerminalTemplate;

/** 
@brief 获取终端分页信息
@code
请求路径: /vehicle/api/Terminals
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiTerminals;

/** 
@brief 根据终端编号编辑终端信息
@code
请求路径: /vehicle/api/Terminals
请求方法: patch
参数列表:

TerminalLevel   integer 标识终端主次级别 
ExpiryDate      string  有效期至 
StartDate       string  启用日期 
AffiliationType integer 归属类型 
ProductDate     string  出厂日期 
Description     string  备注 
CreatedTime     string  创建时间 
CreatedBy       string  创建者 
VehicleId       string  车辆Id 
TerminalStatus  integer 终端状态 
VehicleNo       string  车辆编号 
ProductCode     string  出厂批次 
SimCardNo       string  Sim卡号 
Manufacturer    string  制造商 
TerminalNo      string  终端编号 
OrgId           string  机构Id 
TerminalTypeId  string  终端类型 
@endcode
*/ 
extern NSString * const kVehicleApiTerminals_patch;

/** 
@brief 添加终端信息
@code
请求路径: /vehicle/api/Terminals
请求方法: post
参数列表:

TerminalLevel   integer 标识终端主次级别 
ExpiryDate      string  有效期至 
StartDate       string  启用日期 
AffiliationType integer 归属类型 
ProductDate     string  出厂日期 
Description     string  备注 
CreatedTime     string  创建时间 
CreatedBy       string  创建者 
VehicleId       string  车辆Id 
TerminalStatus  integer 终端状态 
VehicleNo       string  车辆编号 
ProductCode     string  出厂批次 
SimCardNo       string  Sim卡号 
Manufacturer    string  制造商 
TerminalNo      string  终端编号 
OrgId           string  机构Id 
TerminalTypeId  string  终端类型 
@endcode
*/ 
extern NSString * const kVehicleApiTerminals_post;

/** 
@brief 根据终端编号获取终端信息
@code
请求路径: /vehicle/api/Terminals/{terminalNo}
请求方法: get
参数列表:

terminalNo string 终端编号 
@endcode
*/ 
extern NSString * const kVehicleApiTerminalsTerminalNo;

/** 
@brief 根据终端编号删除终端信息
@code
请求路径: /vehicle/api/Terminals/{terminalNo}
请求方法: delete
参数列表:

terminalNo string 终端编号 
@endcode
*/ 
extern NSString * const kVehicleApiTerminalsTerminalNo_delete;

/** 
@brief 绑定终端和SIM卡
@code
请求路径: /vehicle/api/Terminals/{terminalNo}/Simcards/{simCardNo}
请求方法: put
参数列表:

terminalNo string 终端编号 
simCardNo  string Sim卡号 
@endcode
*/ 
extern NSString * const kVehicleApiTerminalsTerminalNoSimcardsSimCardNo;

/** 
@brief 解绑终端和Sim卡
@code
请求路径: /vehicle/api/Terminals/{terminalNo}/Simcards/{simCardNo}
请求方法: delete
参数列表:

terminalNo string 终端编号 
simCardNo  string Sim卡号 
@endcode
*/ 
extern NSString * const kVehicleApiTerminalsTerminalNoSimcardsSimCardNo_delete;

/** 
@brief 导入终端和Sim卡
@code
请求路径: /vehicle/api/Organizations/{orgId}/ImportTerminalsAndSimCards
请求方法: post
@endcode
*/ 
extern NSString * const kVehicleApiOrganizationsOrgIdImportTerminalsAndSimCards;


#pragma mark Brand 品牌服务 
/** 
@brief 根据品牌号获取品牌信息
@code
请求路径: /vehicle/api/Brands/{brandId}
请求方法: get
参数列表:

brandId string 品牌号 
@endcode
*/ 
extern NSString * const kVehicleApiBrandsBrandId;

/** 
@brief 根据品牌号删除品牌信息
@code
请求路径: /vehicle/api/Brands/{brandId}
请求方法: delete
参数列表:

brandId string 品牌号 
@endcode
*/ 
extern NSString * const kVehicleApiBrandsBrandId_delete;

/** 
@brief 根据机构Id获取品牌列表
@code
请求路径: /vehicle/api/Organizations/{orgId}/Brands
请求方法: get
参数列表:

orgId string  
@endcode
*/ 
extern NSString * const kVehicleApiOrganizationsOrgIdBrands;

/** 
@brief 获取品牌分页信息
@code
请求路径: /vehicle/api/Brands
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiBrands;

/** 
@brief 根据品牌号编辑品牌信息
@code
请求路径: /vehicle/api/Brands
请求方法: patch
参数列表:

OrgId   string 机构Id 
Name    string 品牌名称 
OrgName string 机构名称 
Id      string 标识 
@endcode
*/ 
extern NSString * const kVehicleApiBrands_patch;

/** 
@brief 添加品牌信息
@code
请求路径: /vehicle/api/Brands
请求方法: post
参数列表:

OrgId   string 机构Id 
Name    string 品牌名称 
OrgName string 机构名称 
Id      string 标识 
@endcode
*/ 
extern NSString * const kVehicleApiBrands_post;


#pragma mark Soil 土壤服务 
/** 
@brief 根据时间段查询地块的土壤信息
@code
请求路径: /land/api/Lands/{landId}/Soils
请求方法: get
参数列表:

landId    string 地块Id 
startTime string 开始时间 
endTime   string 结束时间 
@endcode
*/ 
extern NSString * const kLandApiLandsLandIdSoils;

/** 
@brief 添加土壤信息
@code
请求路径: /land/api/Soils
请求方法: post
参数列表:

CreatedTime   string 创建时间 
Id            string 土壤Id 
Temperature   string 温度 
LandId        string 地块Id 
WaterRate     number 含水率 
K             number 钾 
PH            number PH值 
Rainfall      number 降雨量 
OrganicMatter number 有机质 
N             number 氮 
Radiation     string 辐射 
P             number 磷 
@endcode
*/ 
extern NSString * const kLandApiSoils;

/** 
@brief 获取当前地块的土壤信息
@code
请求路径: /land/api/Lands/{landId}/Soil
请求方法: get
参数列表:

landId string 地块Id 
@endcode
*/ 
extern NSString * const kLandApiLandsLandIdSoil;


#pragma mark Cameras 摄像机服务 
/** 
@brief 根据摄像机编号获取摄像机信息
@code
请求路径: /vehicle/api/Cameras/{cameraNo}
请求方法: get
参数列表:

cameraNo string 摄像机编号 
@endcode
*/ 
extern NSString * const kVehicleApiCamerasCameraNo;

/** 
@brief 根据摄像机编号删除摄像机信息
@code
请求路径: /vehicle/api/Cameras/{cameraNo}
请求方法: delete
参数列表:

cameraNo string 摄像机编号 
@endcode
*/ 
extern NSString * const kVehicleApiCamerasCameraNo_delete;

/** 
@brief 获取摄像机分页信息
@code
请求路径: /vehicle/api/Cameras
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiCameras;

/** 
@brief 根据摄像机编号编辑摄像机信息
@code
请求路径: /vehicle/api/Cameras
请求方法: patch
参数列表:

OrgId       string 机构Id 
CreatedTime string 创建时间 
SimCardNo   string sim卡号 
CreatedBy   string 创建者 
CameraNo    string 摄像机编号 
@endcode
*/ 
extern NSString * const kVehicleApiCameras_patch;

/** 
@brief 添加摄像机信息
@code
请求路径: /vehicle/api/Cameras
请求方法: post
参数列表:

OrgId       string 机构Id 
CreatedTime string 创建时间 
SimCardNo   string sim卡号 
CreatedBy   string 创建者 
CameraNo    string 摄像机编号 
@endcode
*/ 
extern NSString * const kVehicleApiCameras_post;

/** 
@brief 根据机构Id获取当前机构下未绑定的摄像机列表
@code
请求路径: /vehicle/api/Organizations/{orgId}/Cameras/UnBind
请求方法: get
参数列表:

orgId string  
@endcode
*/ 
extern NSString * const kVehicleApiOrganizationsOrgIdCamerasUnBind;


#pragma mark Output 农资出库服务 
/** 
@brief 增加农资出库
@code
请求路径: /resource/api/Outputs
请求方法: post
参数列表:

CreatedTime        string  创建时间 
Type               integer 农资类型 
ResourceStatusName string  数据状态名称 
SubType            integer 农资子类 
TypeName           string  农资类型名称 
Id                 string   
OutputTypeName     string  出库类型名称 
Unit               string  计量单位 
Description        string  说明 
ResourceId         string  农资Id 
ResourceStatus     integer 数据状态 
TaskId             string  对应作业Id 
OutputType         integer 农资出库类型 
OutputDate         string  出库日期（yyyy-MM-dd HH:mm:ss） 
OrgId              string  机构id 
ResourceName       string  农资名称 
Price              number  单价 
Amount             number  出库数量 
Source             string  购买来源 
SubTypeName        string  农资子类型名称 
@endcode
*/ 
extern NSString * const kResourceApiOutputs_post;

/** 
@brief 查询所有农资出库（分页）
@code
请求路径: /resource/api/Outputs
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
StartTime  string  开始时间（yyyy-MM-dd HH:mm:ss） 
EndTime    string  结束时间（yyyy-MM-dd HH:mm:ss） 
Type       integer 农资类型 
SubType    integer 农资子类型 
Status     integer 数据状态 
InputType  integer 入库类型 
OutputType integer 出库类型 
@endcode
*/ 
extern NSString * const kResourceApiOutputs;

/** 
@brief 修改农资出库
@code
请求路径: /resource/api/Outputs
请求方法: patch
参数列表:

CreatedTime        string  创建时间 
Type               integer 农资类型 
ResourceStatusName string  数据状态名称 
SubType            integer 农资子类 
TypeName           string  农资类型名称 
Id                 string   
OutputTypeName     string  出库类型名称 
Unit               string  计量单位 
Description        string  说明 
ResourceId         string  农资Id 
ResourceStatus     integer 数据状态 
TaskId             string  对应作业Id 
OutputType         integer 农资出库类型 
OutputDate         string  出库日期（yyyy-MM-dd HH:mm:ss） 
OrgId              string  机构id 
ResourceName       string  农资名称 
Price              number  单价 
Amount             number  出库数量 
Source             string  购买来源 
SubTypeName        string  农资子类型名称 
@endcode
*/ 
extern NSString * const kResourceApiOutputs_patch;

/** 
@brief 查询农资出库详情
@code
请求路径: /resource/api/Outputs/{id}
请求方法: get
参数列表:

id string 农资出库id 
@endcode
*/ 
extern NSString * const kResourceApiOutputsId;

/** 
@brief 查询所有出库类型
@code
请求路径: /resource/api/Outputs/OutputTypes
请求方法: get
@endcode
*/ 
extern NSString * const kResourceApiOutputsOutputTypes;

/** 
@brief 查询农资使用记录
@code
请求路径: /resource/api/Outputs/resourceIds/Resources
请求方法: post
@endcode
*/ 
extern NSString * const kResourceApiOutputsResourceIdsResources;


#pragma mark Plant 种植服务 
/** 
@brief 根据地块Id、开始、结束时间查询种植计划列表
@code
请求路径: /crop/api/Lands/{landId}/PlantPlans
请求方法: get
参数列表:

landId    string  
startTime string  
endTime   string  
@endcode
*/ 
extern NSString * const kCropApiLandsLandIdPlantPlans;

/** 
@brief 根据种植计划Id获取种植计划详情
@code
请求路径: /crop/api/PlantPlans/{plantPlanId}
请求方法: get
参数列表:

plantPlanId string  
@endcode
*/ 
extern NSString * const kCropApiPlantPlansPlantPlanId;

/** 
@brief (null)
@code
请求路径: /crop/api/PlantPlans/{plantPlanId}
请求方法: delete
参数列表:

plantPlanId string (null) 
@endcode
*/ 
extern NSString * const kCropApiPlantPlansPlantPlanId_delete;

/** 
@brief 获取种植计划列表不分页
@code
请求路径: /crop/api/Organizations/{orgId}/PlantPlans
请求方法: get
参数列表:

orgId      string 机构Id 
cropTypeId string 作物类型 
startTime  string 开始时间 
endTime    string 结束时间 
@endcode
*/ 
extern NSString * const kCropApiOrganizationsOrgIdPlantPlans;

/** 
@brief 设置种植计划步骤的状态
@code
请求路径: /crop/api/PlantPlans/PlantPlanStep
请求方法: patch
参数列表:

PlanStepId string 种植计划步骤Id 
TaskId     string 任务Id 
@endcode
*/ 
extern NSString * const kCropApiPlantPlansPlantPlanStep;

/** 
@brief 获取种植计划分页信息
@code
请求路径: /crop/api/PlantPlans
请求方法: get
参数列表:

StartTime  string  开始时间 格式：yyyy-MM-dd 
EndTime    string  结束时间 格式：yyyy-MM-dd 
LandId     string  地块Id 
PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kCropApiPlantPlans;

/** 
@brief 添加种植计划
@code
请求路径: /crop/api/PlantPlans
请求方法: post
参数列表:

Description      string  备注 
CreatedTime      string  创建日期 
Id               string  主键标识 
Name             string  计划名称 
LandId           string  地块Id 
TemplateId       string  种植模板Id 
LandName         string  地块名称 
Growth           string  生长周期 
CropVariety      string  作物品类 
SowDate          string  播种日期 
CropType         string  作物类型 
CropTypeId       string  作物类型Id 
CropVarietyId    string  作物品类Id 
PlantNumberPerMu integer 播种密度 
OrgId            string  机构Id 
PlantPlanStages  array   作物计划种植阶段 
@endcode
*/ 
extern NSString * const kCropApiPlantPlans_post;

/** 
@brief 编辑种植计划
@code
请求路径: /crop/api/PlantPlans
请求方法: patch
参数列表:

Description      string  备注 
CreatedTime      string  创建日期 
Id               string  主键标识 
Name             string  计划名称 
LandId           string  地块Id 
TemplateId       string  种植模板Id 
LandName         string  地块名称 
Growth           string  生长周期 
CropVariety      string  作物品类 
SowDate          string  播种日期 
CropType         string  作物类型 
CropTypeId       string  作物类型Id 
CropVarietyId    string  作物品类Id 
PlantNumberPerMu integer 播种密度 
OrgId            string  机构Id 
PlantPlanStages  array   作物计划种植阶段 
@endcode
*/ 
extern NSString * const kCropApiPlantPlans_patch;


#pragma mark Crop 作物服务 
/** 
@brief 添加作物信息
@code
请求路径: /crop/api/Crops
请求方法: post
参数列表:

StepId         string  种植步骤Id 
HarvestDate    string  收获日期 
AverageOutput  integer 平均亩产 
CropVarietyId  string  作物品种Id 
SowDate        string  播种时间 
AverageCost    integer 平均成本 
CropTypeId     string  作物类型Id 
HarvestTaskId  string  收获任务Id 
LandAddress    string  地块地址 
SowTaskId      string  播种任务Id 
CreatedTime    string  创建时间 
LandId         string  地块Id 
Name           string  作物名称 
AverageRevenue integer 平均收益 
CreatedBy      string  负责人 
CropVariety    string  作物品种 
Id             string  主键标识 
Cost           number  总成本 
Description    string  备注 
ManagerName    string  负责人 
Output         integer 产量 
OrgId          string  机构Id 
CropType       string  作物类型 
LandArea       number  地块面积 
Revenue        integer 总收益 
LandName       string  地块名称 
PlantPlanId    string  种植计划Id 
@endcode
*/ 
extern NSString * const kCropApiCrops_post;

/** 
@brief 根据作物Id编辑作物信息
@code
请求路径: /crop/api/Crops
请求方法: patch
参数列表:

StepId         string  种植步骤Id 
HarvestDate    string  收获日期 
AverageOutput  integer 平均亩产 
CropVarietyId  string  作物品种Id 
SowDate        string  播种时间 
AverageCost    integer 平均成本 
CropTypeId     string  作物类型Id 
HarvestTaskId  string  收获任务Id 
LandAddress    string  地块地址 
SowTaskId      string  播种任务Id 
CreatedTime    string  创建时间 
LandId         string  地块Id 
Name           string  作物名称 
AverageRevenue integer 平均收益 
CreatedBy      string  负责人 
CropVariety    string  作物品种 
Id             string  主键标识 
Cost           number  总成本 
Description    string  备注 
ManagerName    string  负责人 
Output         integer 产量 
OrgId          string  机构Id 
CropType       string  作物类型 
LandArea       number  地块面积 
Revenue        integer 总收益 
LandName       string  地块名称 
PlantPlanId    string  种植计划Id 
@endcode
*/ 
extern NSString * const kCropApiCrops_patch;

/** 
@brief 根据机构Id、作物类型Id获取当前种植作物列表
@code
请求路径: /crop/api/Crops
请求方法: get
参数列表:

orgId      string  
cropTypeId string  
key        string 搜索关键词 
@endcode
*/ 
extern NSString * const kCropApiCrops;

/** 
@brief 根据作物品种号获取作物品种信息
@code
请求路径: /crop/api/CropVarieties/{cropVarietyId}
请求方法: get
参数列表:

cropVarietyId string 作物品种Id 
@endcode
*/ 
extern NSString * const kCropApiCropVarietiesCropVarietyId;

/** 
@brief 根据作物品种号删除作物品种信息
@code
请求路径: /crop/api/CropVarieties/{cropVarietyId}
请求方法: delete
参数列表:

cropVarietyId string 作物品种Id 
@endcode
*/ 
extern NSString * const kCropApiCropVarietiesCropVarietyId_delete;

/** 
@brief 根据作物Id删除作物信息
@code
请求路径: /crop/api/Crops/{cropId}
请求方法: delete
参数列表:

cropId string 作物品种Id 
@endcode
*/ 
extern NSString * const kCropApiCropsCropId_delete;

/** 
@brief 根据作物Id获取作物信息
@code
请求路径: /crop/api/Crops/{cropId}
请求方法: get
参数列表:

cropId string 作物Id 
@endcode
*/ 
extern NSString * const kCropApiCropsCropId;

/** 
@brief 获取作物类型列表信息（不分页）
@code
请求路径: /crop/api/Organizations/{orgId}/CropTypes
请求方法: get
参数列表:

orgId string 机构Id 
key   string 搜索关键词 
@endcode
*/ 
extern NSString * const kCropApiOrganizationsOrgIdCropTypes;

/** 
@brief 根据地块Id获取当前的种植作物
@code
请求路径: /crop/api/Lands/{landId}/Crop
请求方法: get
参数列表:

landId string  
@endcode
*/ 
extern NSString * const kCropApiLandsLandIdCrop;

/** 
@brief 根据地块Id判断是否有生长作物
@code
请求路径: /crop/api/Crops/Lands/{landId}
请求方法: get
参数列表:

landId string  
@endcode
*/ 
extern NSString * const kCropApiCropsLandsLandId;

/** 
@brief 获取作物品种分页信息
@code
请求路径: /crop/api/CropVarieties
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kCropApiCropVarieties;

/** 
@brief 根据作物品种号编辑作物品种信息
@code
请求路径: /crop/api/CropVarieties
请求方法: patch
参数列表:

CropTypeId  integer 作物类型Id 
Id          string  主键标识 
CropType    string  作物类型 
Name        string  CropType
作物品种名称 
OrgId       string  机构Id 
Description string  描述 
CreatedTime string  创建日期 
@endcode
*/ 
extern NSString * const kCropApiCropVarieties_patch;

/** 
@brief 添加作物品种信息
@code
请求路径: /crop/api/CropVarieties
请求方法: post
参数列表:

CropTypeId  integer 作物类型Id 
Id          string  主键标识 
CropType    string  作物类型 
Name        string  CropType
作物品种名称 
OrgId       string  机构Id 
Description string  描述 
CreatedTime string  创建日期 
@endcode
*/ 
extern NSString * const kCropApiCropVarieties_post;

/** 
@brief 获取作物类型
@code
请求路径: /crop/api/CropTypes
请求方法: get
参数列表:

marker integer 标记 1: 查询仅有模板的，非1 ：查询所有 
@endcode
*/ 
extern NSString * const kCropApiCropTypes;

/** 
@brief 根据作物类型获取作物品种类型
@code
请求路径: /crop/api/CropTypes/{cropTypeId}/CropVariety
请求方法: get
参数列表:

cropTypeId string   
marker     integer 标记 1: 查询仅有模板的，非1 ：查询所有 
@endcode
*/ 
extern NSString * const kCropApiCropTypesCropTypeIdCropVariety;

/** 
@brief 根据起止时间查询作物种植账本
@code
请求路径: /crop/api/Crops/Accounts
请求方法: get
参数列表:

orgId     string  
startTime string  
endTime   string  
@endcode
*/ 
extern NSString * const kCropApiCropsAccounts;


#pragma mark Organization 机构服务 
/** 
@brief 查询所有组织机构机构类型
@code
请求路径: /sys/api/OrganizationTypes
请求方法: get
@endcode
*/ 
extern NSString * const kSysApiOrganizationTypes;

/** 
@brief 查询多个机构
@code
请求路径: /sys/api/Organizations/Orgs
请求方法: post
@endcode
*/ 
extern NSString * const kSysApiOrganizationsOrgs;

/** 
@brief 获取当前机构以及以下机构ChildIds
@code
请求路径: /sys/api/Organizations/{orgId}/ChildIds
请求方法: get
参数列表:

orgId string  
@endcode
*/ 
extern NSString * const kSysApiOrganizationsOrgIdChildIds;

/** 
@brief 增加机构
@code
请求路径: /sys/api/Organizations
请求方法: post
参数列表:

Code           string  机构编码 
ParentId       string  父机构id 
OrgTypeName    string  机构类型 
City           string  市编码 
OrgTypeCode    integer 机构类型 
CityName       string  市 
Name           string  机构名称 
Manager        string  负责人id 
Address        string  具体地址 
OrgSubTypeCode integer 机构子类型 
Province       string  省编码 
District       string  县/区编码 
StatusName     string  (null) 
OrgSubTypeName string  机构子类型 
Id             string   
Phone          string  联系电话 
ProvinceName   string  省 
Description    string  描述 
ManagerName    string  负责人名称 
DistrictName   string  县/区编 
@endcode
*/ 
extern NSString * const kSysApiOrganizations;

/** 
@brief 修改机构信息
@code
请求路径: /sys/api/Organizations
请求方法: patch
参数列表:

Code           string  机构编码 
ParentId       string  父机构id 
OrgTypeName    string  机构类型 
City           string  市编码 
OrgTypeCode    integer 机构类型 
CityName       string  市 
Name           string  机构名称 
Manager        string  负责人id 
Address        string  具体地址 
OrgSubTypeCode integer 机构子类型 
Province       string  省编码 
District       string  县/区编码 
StatusName     string  (null) 
OrgSubTypeName string  机构子类型 
Id             string   
Phone          string  联系电话 
ProvinceName   string  省 
Description    string  描述 
ManagerName    string  负责人名称 
DistrictName   string  县/区编 
@endcode
*/ 
extern NSString * const kSysApiOrganizations_patch;

/** 
@brief 查询机构树
@code
请求路径: /sys/api/Organizations/OrgTree
请求方法: post
参数列表:

OrgId       string  机构id 
OrgTypeCode string  机构分类编码 
Status      integer 数据状态 
@endcode
*/ 
extern NSString * const kSysApiOrganizationsOrgTree;

/** 
@brief 查询单个机构
@code
请求路径: /sys/api/Organizations/{orgId}
请求方法: get
参数列表:

orgId string 机构id 
@endcode
*/ 
extern NSString * const kSysApiOrganizationsOrgId;

/** 
@brief 机构是否存在
@code
请求路径: /sys/api/Organizations/{orgId}/orgId
请求方法: get
参数列表:

orgId string  
@endcode
*/ 
extern NSString * const kSysApiOrganizationsOrgIdOrgId;

/** 
@brief 查询机构子类型
@code
请求路径: /sys/api/OrganizationSubTypes/{orgTypeCode}
请求方法: get
参数列表:

orgTypeCode string 机构类型编码 
@endcode
*/ 
extern NSString * const kSysApiOrganizationSubTypesOrgTypeCode;


#pragma mark FuelDepot 油库服务 
/** 
@brief 根据油库Id获取油库信息
@code
请求路径: /vehicle/api/FuelDepots/{fuelDepotNo}
请求方法: get
参数列表:

fuelDepotNo string 油库Id 
@endcode
*/ 
extern NSString * const kVehicleApiFuelDepotsFuelDepotNo;

/** 
@brief 根据油库Id删除油库信息
@code
请求路径: /vehicle/api/FuelDepots/{fuelDepotNo}
请求方法: delete
参数列表:

fuelDepotNo string 油库Id 
@endcode
*/ 
extern NSString * const kVehicleApiFuelDepotsFuelDepotNo_delete;

/** 
@brief 根据机构Id、燃油类型,获取油库信息
@code
请求路径: /vehicle/api/FuelDepots
请求方法: get
参数列表:

orgId    string 机构Id 
fuelType string 燃油类型 
@endcode
*/ 
extern NSString * const kVehicleApiFuelDepots;

/** 
@brief 根据油库Id编辑油库信息
@code
请求路径: /vehicle/api/FuelDepots
请求方法: patch
参数列表:

Status          string 是否启用 
Id              string 标识 
DieselgradeType string 燃油标号 
Quantity        string 油量（升 
FuelType        string 燃油类型 
OrgId           string 所属机构 
CreatedTime     string 创建时间 
@endcode
*/ 
extern NSString * const kVehicleApiFuelDepots_patch;

/** 
@brief 添加油库信息
@code
请求路径: /vehicle/api/FuelDepots
请求方法: post
参数列表:

Status          string 是否启用 
Id              string 标识 
DieselgradeType string 燃油标号 
Quantity        string 油量（升 
FuelType        string 燃油类型 
OrgId           string 所属机构 
CreatedTime     string 创建时间 
@endcode
*/ 
extern NSString * const kVehicleApiFuelDepots_post;

/** 
@brief 根据机构Id和燃油类型获取油库信息
@code
请求路径: /vehicle/api/Organizations/{orgId}/FuelDepots/FuelTypes/{fuelType}
请求方法: get
参数列表:

orgId    string 机构Id 
fuelType string 燃油类型 
@endcode
*/ 
extern NSString * const kVehicleApiOrganizationsOrgIdFuelDepotsFuelTypesFuelType;


#pragma mark Simcards Sim卡服务 
/** 
@brief 根据Sim卡号获取Sim卡信息
@code
请求路径: /vehicle/api/Simcards/{simcardNo}
请求方法: get
参数列表:

simcardNo string Sim卡号 
@endcode
*/ 
extern NSString * const kVehicleApiSimcardsSimcardNo;

/** 
@brief 根据Sim卡号删除Sim卡信息
@code
请求路径: /vehicle/api/Simcards/{simcardNo}
请求方法: delete
参数列表:

simcardNo string Sim卡号 
@endcode
*/ 
extern NSString * const kVehicleApiSimcardsSimcardNo_delete;

/** 
@brief 获取Sim卡分页信息
@code
请求路径: /vehicle/api/Simcards
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiSimcards;

/** 
@brief 根据Sim卡号编辑Sim卡信息
@code
请求路径: /vehicle/api/Simcards
请求方法: patch
参数列表:

SimcardNo   string  Sim卡号 
OrgId       string  机构Id 
Description string  备注 
CreatedTime string  创建时间 
SimType     integer sim卡类型 	0:终端，1:摄像机 
@endcode
*/ 
extern NSString * const kVehicleApiSimcards_patch;

/** 
@brief 添加Sim卡信息
@code
请求路径: /vehicle/api/Simcards
请求方法: post
参数列表:

SimcardNo   string  Sim卡号 
OrgId       string  机构Id 
Description string  备注 
CreatedTime string  创建时间 
SimType     integer sim卡类型 	0:终端，1:摄像机 
@endcode
*/ 
extern NSString * const kVehicleApiSimcards_post;


#pragma mark Fuels 燃油服务 
/** 
@brief 根据燃油流水Id获取燃油流水信息
@code
请求路径: /vehicle/api/FuelFlows/{fuelFlowId}
请求方法: get
参数列表:

fuelFlowId string 燃油流水Id 
@endcode
*/ 
extern NSString * const kVehicleApiFuelFlowsFuelFlowId;

/** 
@brief 获取燃油流水分页信息
@code
请求路径: /vehicle/api/FuelFlows
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiFuelFlows;

/** 
@brief 根据燃油流水Id编辑燃油流水信息
@code
请求路径: /vehicle/api/FuelFlows
请求方法: patch
参数列表:

Amount        string 总价 
OperateTime   string 操作时间 
CreatedTime   string 创建时间 
Id            string 标识 
Description   string 备注 
DepotId       string 油库id 
UserName      string 采购人或加油专员姓名 
Phone         string 电话 
VehicleNo     string 车辆编号 
FlowType      string 流水类型 
BrandType     string 燃油品牌 
PayType       string 支付方式 
Address       string 地点 
DepotQuantity string 油库油量（升） 
Status        string 状态 
Price         string 单价 
Quantity      string 油量（升） 
@endcode
*/ 
extern NSString * const kVehicleApiFuelFlows_patch;

/** 
@brief 添加燃油流水信息
@code
请求路径: /vehicle/api/FuelFlows
请求方法: post
参数列表:

Amount        string 总价 
OperateTime   string 操作时间 
CreatedTime   string 创建时间 
Id            string 标识 
Description   string 备注 
DepotId       string 油库id 
UserName      string 采购人或加油专员姓名 
Phone         string 电话 
VehicleNo     string 车辆编号 
FlowType      string 流水类型 
BrandType     string 燃油品牌 
PayType       string 支付方式 
Address       string 地点 
DepotQuantity string 油库油量（升） 
Status        string 状态 
Price         string 单价 
Quantity      string 油量（升） 
@endcode
*/ 
extern NSString * const kVehicleApiFuelFlows_post;

/** 
@brief 获取燃油类型（燃油类型以及相关的标号）
@code
请求路径: /vehicle/api/FuelTypes
请求方法: get
@endcode
*/ 
extern NSString * const kVehicleApiFuelTypes;


#pragma mark TerminalType 终端类型服务 
/** 
@brief 获取所有终端类型
@code
请求路径: /vehicle/api/TerminalTypes
请求方法: get
@endcode
*/ 
extern NSString * const kVehicleApiTerminalTypes;


#pragma mark Input 农资入库服务 
/** 
@brief 查询所有入库类型
@code
请求路径: /resource/api/Inputs/InputTypes
请求方法: get
@endcode
*/ 
extern NSString * const kResourceApiInputsInputTypes;

/** 
@brief 增加农资入库
@code
请求路径: /resource/api/Inputs
请求方法: post
参数列表:

Amount        number  入库数量 
Description   string  说明 
CreatedTime   string  创建时间 
Id            string   
ResourceId    string  农资Id 
InputDate     string  入库日期（yyyy-MM-dd HH:mm:ss） 
Unit          string  计量单位 
TaskId        string  对应作业Id 
Price         number  单价 
InputTypeName string  入库类型名称 
InputType     integer 入库类型 
OrgId         string  机构id 
ResourceName  string  农资名称 
@endcode
*/ 
extern NSString * const kResourceApiInputs_post;

/** 
@brief 查询所有农资入库（分页）
@code
请求路径: /resource/api/Inputs
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
StartTime  string  开始时间（yyyy-MM-dd HH:mm:ss） 
EndTime    string  结束时间（yyyy-MM-dd HH:mm:ss） 
Type       integer 农资类型 
SubType    integer 农资子类型 
Status     integer 数据状态 
InputType  integer 入库类型 
OutputType integer 出库类型 
@endcode
*/ 
extern NSString * const kResourceApiInputs;

/** 
@brief 修改农资入库
@code
请求路径: /resource/api/Inputs
请求方法: patch
参数列表:

Amount        number  入库数量 
Description   string  说明 
CreatedTime   string  创建时间 
Id            string   
ResourceId    string  农资Id 
InputDate     string  入库日期（yyyy-MM-dd HH:mm:ss） 
Unit          string  计量单位 
TaskId        string  对应作业Id 
Price         number  单价 
InputTypeName string  入库类型名称 
InputType     integer 入库类型 
OrgId         string  机构id 
ResourceName  string  农资名称 
@endcode
*/ 
extern NSString * const kResourceApiInputs_patch;

/** 
@brief 查询农资入库详情
@code
请求路径: /resource/api/Inputs/{id}
请求方法: get
参数列表:

id string 农资入库id 
@endcode
*/ 
extern NSString * const kResourceApiInputsId;


#pragma mark Status 状态服务 
/** 
@brief 获取数据状态不包含全部
@code
请求路径: /sys/api/Status/NotAllStatus
请求方法: get
@endcode
*/ 
extern NSString * const kSysApiStatusNotAllStatus;

/** 
@brief 获取所有数据状态
@code
请求路径: /sys/api/Status/AllStatus
请求方法: get
@endcode
*/ 
extern NSString * const kSysApiStatusAllStatus;


#pragma mark DataPermission 数据权限服务 
/** 
@brief 根据Token、微服务标识获取对应的数据权限
@code
请求路径: /sys/api/DataPermissions
请求方法: get
参数列表:

token     string 令牌 
serviceId string 服务标识：车辆-Vehicle、地块-Land、作物-Crop 
@endcode
*/ 
extern NSString * const kSysApiDataPermissions;


#pragma mark Resource 农资服务 
/** 
@brief 查询数据状态
@code
请求路径: /resource/api/Resources/Status
请求方法: get
@endcode
*/ 
extern NSString * const kResourceApiResourcesStatus;

/** 
@brief 查询所有农资类型
@code
请求路径: /resource/api/Resources/ResourceTypes
请求方法: get
@endcode
*/ 
extern NSString * const kResourceApiResourcesResourceTypes;

/** 
@brief 增加农资数据
@code
请求路径: /resource/api/Resources
请求方法: post
参数列表:

Amount      number  库存数量 
CreatedTime string  创建日期 
Id          string   
Name        string  农资名称 
SubTypeName string  农资子类型名称 
SubType     integer 农资子类 
Unit        string  计量单位 
Source      string  购买来源 
IsQuote     boolean 是否被引用 
Type        integer 农资类型 
TypeName    string  农资类型名称 
Price       number  单价 
Status      integer 数据状态 
StatusName  string  数据状态名称 
OrgId       string  机构id 
@endcode
*/ 
extern NSString * const kResourceApiResources_post;

/** 
@brief 查询所有农资（分页）
@code
请求路径: /resource/api/Resources
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
StartTime  string  开始时间（yyyy-MM-dd HH:mm:ss） 
EndTime    string  结束时间（yyyy-MM-dd HH:mm:ss） 
Type       integer 农资类型 
SubType    integer 农资子类型 
Status     integer 数据状态 
InputType  integer 入库类型 
OutputType integer 出库类型 
@endcode
*/ 
extern NSString * const kResourceApiResources;

/** 
@brief 修改农资
@code
请求路径: /resource/api/Resources
请求方法: patch
参数列表:

Amount      number  库存数量 
CreatedTime string  创建日期 
Id          string   
Name        string  农资名称 
SubTypeName string  农资子类型名称 
SubType     integer 农资子类 
Unit        string  计量单位 
Source      string  购买来源 
IsQuote     boolean 是否被引用 
Type        integer 农资类型 
TypeName    string  农资类型名称 
Price       number  单价 
Status      integer 数据状态 
StatusName  string  数据状态名称 
OrgId       string  机构id 
@endcode
*/ 
extern NSString * const kResourceApiResources_patch;

/** 
@brief 查询农资详情
@code
请求路径: /resource/api/Resources/{id}
请求方法: get
参数列表:

id string 农资id 
@endcode
*/ 
extern NSString * const kResourceApiResourcesId;

/** 
@brief 删除农资
@code
请求路径: /resource/api/Resources/{id}
请求方法: delete
参数列表:

id string 农资id 
@endcode
*/ 
extern NSString * const kResourceApiResourcesId_delete;

/** 
@brief 查询多条农资
@code
请求路径: /resource/api/Resources/ids/Resources
请求方法: post
@endcode
*/ 
extern NSString * const kResourceApiResourcesIdsResources;

/** 
@brief 查询农资下的子类型
@code
请求路径: /resource/api/Resources/{type}/ResourceSubTypes
请求方法: get
参数列表:

type integer  
@endcode
*/ 
extern NSString * const kResourceApiResourcesTypeResourceSubTypes;

/** 
@brief 查询多条农资
@code
请求路径: /resource/api/Resources/{type}/{subType}/Resources
请求方法: get
参数列表:

type    integer 农资类型 
subType integer 农资子类型 
@endcode
*/ 
extern NSString * const kResourceApiResourcesTypeSubTypeResources;

/** 
@brief 测试
@code
请求路径: /resource/api/Tasks/Ping/{pong}
请求方法: get
参数列表:

pong string  
@endcode
*/ 
extern NSString * const kResourceApiTasksPingPong;


#pragma mark Event 作业质量报警服务 
/** 
@brief 查询单条作业报警事件记录
@code
请求路径: /task/api/Events/{eventId}
请求方法: get
参数列表:

eventId string 作业报警事件id 
@endcode
*/ 
extern NSString * const kTaskApiEventsEventId;

/** 
@brief 增加作业报警事件数据
@code
请求路径: /task/api/Events
请求方法: post
参数列表:

Class          integer 作业事件业务类型 
OperatorName   string  操作员名称 
LevelName      string  报警级别名称 
GpsTime        string  gps时间 
CreatedTime    string  创建日期 
AlarmTypeName  string  报警类型名称 
TaskName       string  作业名称 
LandId         string  地块id 
MaxValue       number  最大值 
Lng            number  经度 
Type           string  事件类型编码/报警类型 
SubType        string  事件子类型编码 
ClassName      string  业务类型名称 
AlarmSettingId string  报警设置Id 
Operator       string  操作员 
Duration       integer 持续时长 
Level          integer 报警级别 
Id             string   
Value          number  业务值 
TaskId         string  作业id 
TerminalNo     string  终端编号 
Lat            number  维度 
TaskType       integer 作业类型 
Status         integer 数据状态 
MinValue       number  最小值 
TaskTypeName   string  任务类型名称 
LandName       string  地块名称 
@endcode
*/ 
extern NSString * const kTaskApiEvents_post;

/** 
@brief 查询所有增加作业报警事件记录（分页）
@code
请求路径: /task/api/Events
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
StartTime  string  开始时间（yyyy-MM-dd HH:mm:ss） 
EndTime    string  结束时间（yyyy-MM-dd HH:mm:ss） 
TaskType   integer 任务类型 
AlarmType  integer 报警类型 
AlarmLevel integer 报警级别 
Operator   string  名称 
TaskStatus integer 任务状态 
VehicleId  string  车辆Id 
LandId     string  地块Id 
@endcode
*/ 
extern NSString * const kTaskApiEvents;


#pragma mark Vehicles 车辆服务 
/** 
@brief 绑定车辆摄像机
@code
请求路径: /vehicle/api/Vehicles/{vehicleId}/Cameras/{cameraNo}
请求方法: put
参数列表:

vehicleId string  
cameraNo  string  
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesVehicleIdCamerasCameraNo;

/** 
@brief 解绑车辆和摄像机
@code
请求路径: /vehicle/api/Vehicles/{vehicleId}/Cameras/{cameraNo}
请求方法: delete
参数列表:

vehicleId string 车辆Id 
cameraNo  string 摄像机编号 
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesVehicleIdCamerasCameraNo_delete;

/** 
@brief 车辆调配
@code
请求路径: /vehicle/api/Vehicles/{vehicleId}/Organizations/{orgId}
请求方法: put
参数列表:

vehicleId string 车辆Id 
orgId     string 机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesVehicleIdOrganizationsOrgId;

/** 
@brief 根据车辆Id、开始时间、结束时间获取历史轨迹
@code
请求路径: /vehicle/api/Vehicles/History
请求方法: post
参数列表:

StartTime string 开始时间 
EndTime   string 结束时间 
VehicleId string 车辆Id 
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesHistory;

/** 
@brief 获取车辆的实时信息
@code
请求路径: /vehicle/api/Vehicles/{vehicleId}/RealTime
请求方法: get
参数列表:

vehicleId string 车辆Id 
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesVehicleIdRealTime;

/** 
@brief 根据车辆Id获取车辆信息
@code
请求路径: /vehicle/api/Vehicles/{vehicleId}
请求方法: get
参数列表:

vehicleId string 车辆Id 
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesVehicleId;

/** 
@brief 根据车辆Id删除车辆信息
@code
请求路径: /vehicle/api/Vehicles/{vehicleId}
请求方法: delete
参数列表:

vehicleId string 车辆Id 
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesVehicleId_delete;

/** 
@brief 更新车辆的作业和机具类型
@code
请求路径: /vehicle/api/Vehicles/{vehicleId}
请求方法: put
参数列表:

vehicleId string 车辆Id 
workType  string 作业类型 
toolType  string 机具类型 
width     number 作业宽幅 
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesVehicleId_put;

/** 
@brief 获取车辆分页信息
@code
请求路径: /vehicle/api/Vehicles
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiVehicles;

/** 
@brief 根据车辆Id编辑车辆信息
@code
请求路径: /vehicle/api/Vehicles
请求方法: patch
@endcode
*/ 
extern NSString * const kVehicleApiVehicles_patch;

/** 
@brief 添加车辆信息
@code
请求路径: /vehicle/api/Vehicles
请求方法: post
@endcode
*/ 
extern NSString * const kVehicleApiVehicles_post;

/** 
@brief 根据机构Id获取车辆信息（不分页）
@code
请求路径: /vehicle/api/Organizations/{orgId}/Vehicles
请求方法: get
参数列表:

orgId string 机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiOrganizationsOrgIdVehicles;

/** 
@brief 获取车辆的绑定记录
@code
请求路径: /vehicle/api/Vehicles/{vehicleId}/BindRecords
请求方法: get
参数列表:

vehicleId string  
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesVehicleIdBindRecords;

/** 
@brief 绑定车辆和终端
@code
请求路径: /vehicle/api/Vehicles/{vehicleId}/Terminals/{terminalNo}
请求方法: put
参数列表:

vehicleId  string 车辆Id 
terminalNo string 终端编号 
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesVehicleIdTerminalsTerminalNo;

/** 
@brief 解绑车辆和终端
@code
请求路径: /vehicle/api/Vehicles/{vehicleId}/Terminals/{terminalNo}
请求方法: delete
参数列表:

vehicleId  string 车辆Id 
terminalNo string 终端编号 
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesVehicleIdTerminalsTerminalNo_delete;

/** 
@brief 根据机构Id获取车辆在线数
@code
请求路径: /vehicle/api/Monitors/Organizations/{orgId}/Vehicles/Count
请求方法: get
参数列表:

orgId string 机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiMonitorsOrganizationsOrgIdVehiclesCount;

/** 
@brief 根据机构Id获取车辆分布信息
@code
请求路径: /vehicle/api/Monitors/Organizations/{orgId}/Vehicles/Distribute
请求方法: get
参数列表:

orgId string 机构Id 
@endcode
*/ 
extern NSString * const kVehicleApiMonitorsOrganizationsOrgIdVehiclesDistribute;

/** 
@brief 根据在线离线状态获取车辆列表
@code
请求路径: /vehicle/api/Monitors/Vehicles
请求方法: post
参数列表:

PageSize  integer 页容量 
OrgId     string  机构 Id 
Status    integer 查询的状态 1：全部 2 ：在线  3:离线 
KeyValue  string  搜索关键字 
PageIndex integer 页码 
@endcode
*/ 
extern NSString * const kVehicleApiMonitorsVehicles;

/** 
@brief 根据机构Id按车型统计
@code
请求路径: /vehicle/api/Vehicles/Statistic
请求方法: get
参数列表:

orgId string  
@endcode
*/ 
extern NSString * const kVehicleApiVehiclesStatistic;


#pragma mark Template 种植模板服务 
/** 
@brief 根据模板Id获取种植模板
@code
请求路径: /crop/api/Templates/{templateId}
请求方法: get
参数列表:

templateId string  
@endcode
*/ 
extern NSString * const kCropApiTemplatesTemplateId;

/** 
@brief 根据作物类型获取作物品种类型
@code
请求路径: /crop/api/Templates
请求方法: get
参数列表:

cropTypeId    string  
cropVarietyId string  
@endcode
*/ 
extern NSString * const kCropApiTemplates;


#pragma mark Grow 生长记录 
/** 
@brief 根据作物Id获取生长记录
@code
请求路径: /crop/api/Crop/{cropId}/Grows
请求方法: get
参数列表:

cropId string  
@endcode
*/ 
extern NSString * const kCropApiCropCropIdGrows;

/** 
@brief 添加生长记录
@code
请求路径: /crop/api/Grows
请求方法: post
@endcode
*/ 
extern NSString * const kCropApiGrows;

/** 
@brief 编辑生长记录
@code
请求路径: /crop/api/Grows
请求方法: patch
@endcode
*/ 
extern NSString * const kCropApiGrows_patch;

/** 
@brief 根据作物生长记录Id删除作物生长记录
@code
请求路径: /crop/api/Grows/{growId}
请求方法: delete
参数列表:

growId string  
@endcode
*/ 
extern NSString * const kCropApiGrowsGrowId_delete;

/** 
@brief 根据作物生长记录Id获取记录详情
@code
请求路径: /crop/api/Grows/{growId}
请求方法: get
参数列表:

growId string  
@endcode
*/ 
extern NSString * const kCropApiGrowsGrowId;


#pragma mark Track 地块轨迹服务 
/** 
@brief 查询多条轨迹
@code
请求路径: /land/api/tracks/TrackScope
请求方法: post
@endcode
*/ 
extern NSString * const kLandApiTracksTrackScope;

/** 
@brief 获取地块轨迹分页信息
@code
请求路径: /land/api/tracks
请求方法: get
参数列表:

LandId     string  地块Id 
PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
@endcode
*/ 
extern NSString * const kLandApiTracks;

/** 
@brief 根据地块轨迹Id编辑地块轨迹信息
@code
请求路径: /land/api/tracks
请求方法: patch
参数列表:

LandId          string  地块Id 
SourceId        string  来源轨迹Id 
Id              string  轨迹Id 
VariableTrackId string  变量作业轨迹Id 
Path            string  路径点位集合 
TaskType        integer 任务类型 
Name            string  轨迹名称 
Width           number  宽幅 
CreatedTime     string  创建时间 
@endcode
*/ 
extern NSString * const kLandApiTracks_patch;

/** 
@brief 添加地块轨迹信息
@code
请求路径: /land/api/tracks
请求方法: post
参数列表:

LandId          string  地块Id 
SourceId        string  来源轨迹Id 
Id              string  轨迹Id 
VariableTrackId string  变量作业轨迹Id 
Path            string  路径点位集合 
TaskType        integer 任务类型 
Name            string  轨迹名称 
Width           number  宽幅 
CreatedTime     string  创建时间 
@endcode
*/ 
extern NSString * const kLandApiTracks_post;

/** 
@brief 根据地块轨迹Id获取地块轨迹信息
@code
请求路径: /land/api/track/{trackId}
请求方法: get
参数列表:

trackId string 地块轨迹Id 
@endcode
*/ 
extern NSString * const kLandApiTrackTrackId;

/** 
@brief 根据地块轨迹Id删除地块轨迹信息
@code
请求路径: /land/api/track/{trackId}
请求方法: delete
参数列表:

trackId string (null) 
@endcode
*/ 
extern NSString * const kLandApiTrackTrackId_delete;

/** 
@brief 查询地块下的所有轨迹
@code
请求路径: /land/api/taskType/tracks
请求方法: get
参数列表:

LandId   string  地块id 
TaskType integer 作业类型 
@endcode
*/ 
extern NSString * const kLandApiTaskTypeTracks;


#pragma mark SolutionType 方案类型服务 
/** 
@brief 查询所有方案类型
@code
请求路径: /sys/api/SolutionTypes/SolutionType
请求方法: get
@endcode
*/ 
extern NSString * const kSysApiSolutionTypesSolutionType;


#pragma mark Position 岗位服务 
/** 
@brief 增加岗位数据（同一机构下岗位名称不能重复）
@code
请求路径: /sys/api/Positions
请求方法: post
参数列表:

CreatedBy            string  创建人 
AccessLandControl    integer 是否控制地块 
Description          string  描述 
CreatedTime          string  创建时间 
Id                   string   
Name                 string  岗位名称 
DataRoleId           string  权限角色Id 
DataRoleName         string  数据角色名称 
CreatedUserName      string  创建人 
RoleName             string  角色名称 
Status               integer 数据状态 
StatusName           string  状态名称 
AccessVehicleControl integer 是否控制车辆 
OrgName              string  机构名称 
RoleId               string  角色Id 
OrgId                string  组织Id 
@endcode
*/ 
extern NSString * const kSysApiPositions_post;

/** 
@brief 查询所有岗位（分页）
@code
请求路径: /sys/api/Positions
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
StartTime  string  开始时间（yyyy-MM-dd） 
EndTime    string  结束时间（yyyy-MM-dd） 
Status     integer 状态 
@endcode
*/ 
extern NSString * const kSysApiPositions;

/** 
@brief 修改岗位数据（同一机构下岗位名称不能重复）
@code
请求路径: /sys/api/Positions
请求方法: patch
参数列表:

CreatedBy            string  创建人 
AccessLandControl    integer 是否控制地块 
Description          string  描述 
CreatedTime          string  创建时间 
Id                   string   
Name                 string  岗位名称 
DataRoleId           string  权限角色Id 
DataRoleName         string  数据角色名称 
CreatedUserName      string  创建人 
RoleName             string  角色名称 
Status               integer 数据状态 
StatusName           string  状态名称 
AccessVehicleControl integer 是否控制车辆 
OrgName              string  机构名称 
RoleId               string  角色Id 
OrgId                string  组织Id 
@endcode
*/ 
extern NSString * const kSysApiPositions_patch;

/** 
@brief 查询机构下所有正常岗位
@code
请求路径: /sys/api/Positions/{orgId}Position
请求方法: get
参数列表:

orgId string  
@endcode
*/ 
extern NSString * const kSysApiPositionsOrgIdPosition;

/** 
@brief 获取预置岗位
@code
请求路径: /sys/api/Positions/PresetPosition
请求方法: get
@endcode
*/ 
extern NSString * const kSysApiPositionsPresetPosition;

/** 
@brief 查询单个岗位详情
@code
请求路径: /sys/api/Positions/{positionId}
请求方法: get
参数列表:

positionId string 岗位id 
@endcode
*/ 
extern NSString * const kSysApiPositionsPositionId;


#pragma mark Login 登录服务 
/** 
@brief 验证码
@code
请求路径: /sys/api/VerifyCode
请求方法: get
@endcode
*/ 
extern NSString * const kSysApiVerifyCode;

/** 
@brief App登录
@code
请求路径: /sys/api/AppLogin
请求方法: post
参数列表:

Password  string 密码 
LoginName string 登录名 
@endcode
*/ 
extern NSString * const kSysApiAppLogin;

/** 
@brief 测试
@code
请求路径: /sys/api/Index
请求方法: get
@endcode
*/ 
extern NSString * const kSysApiIndex;

/** 
@brief 登录接口
@code
请求路径: /sys/api/Login
请求方法: post
参数列表:

LoginName  string 登录名 
Password   string 密码 
VerifyCode string 验证码 
@endcode
*/ 
extern NSString * const kSysApiLogin;

/** 
@brief 登出接口
@code
请求路径: /sys/api/LogOut
请求方法: get
参数列表:

token string  
@endcode
*/ 
extern NSString * const kSysApiLogOut;

/** 
@brief Token验证接口
@code
请求路径: /sys/api/ValidToken
请求方法: get
参数列表:

token string  
@endcode
*/ 
extern NSString * const kSysApiValidToken;


#pragma mark Task 作业服务 
/** 
@brief 修改任务状态
@code
请求路径: /task/api/Tasks/status/{taskId}/{status}
请求方法: patch
@endcode
*/ 
extern NSString * const kTaskApiTasksStatusTaskIdStatus;

/** 
@brief 机具类型
@code
请求路径: /task/api/Tasks/ToolType/{taskType}
请求方法: get
参数列表:

taskType integer  
@endcode
*/ 
extern NSString * const kTaskApiTasksToolTypeTaskType;

/** 
@brief 查询单个任务
@code
请求路径: /task/api/Tasks/{taskId}
请求方法: get
参数列表:

taskId string 作业id 
@endcode
*/ 
extern NSString * const kTaskApiTasksTaskId;

/** 
@brief 删除任务
@code
请求路径: /task/api/Tasks/{taskId}
请求方法: delete
参数列表:

taskId string  
@endcode
*/ 
extern NSString * const kTaskApiTasksTaskId_delete;

/** 
@brief 查询机构下任务类型统计
@code
请求路径: /task/api/Tasks/taksType/statistics
请求方法: get
参数列表:

OrgId     string 机构id 
StartTime string 开始时间 
EndTime   string 结束时间 
@endcode
*/ 
extern NSString * const kTaskApiTasksTaksTypeStatistics;

/** 
@brief 农资是否被引用
@code
请求路径: /task/api/Tasks/taskResource/{resourceId}
请求方法: get
参数列表:

resourceId string  
@endcode
*/ 
extern NSString * const kTaskApiTasksTaskResourceResourceId;

/** 
@brief 农资是否被引用返回多个
@code
请求路径: /task/api/Tasks/taskResource/resourceIds
请求方法: post
@endcode
*/ 
extern NSString * const kTaskApiTasksTaskResourceResourceIds;

/** 
@brief 查询作业历史
@code
请求路径: /task/api/Tasks/{relevanceId}/{relevanceType}/HistoryTask
请求方法: get
参数列表:

relevanceId   string  关联id（vehicleId，landId） 
relevanceType integer 关联类型（1：车辆id，2：地块id） 
startTime     string  开始时间（yyyy-MM-dd HH:mm:ss） 
endTime       string  结束时间（yyyy-MM-dd HH:mm:ss） 
@endcode
*/ 
extern NSString * const kTaskApiTasksRelevanceIdRelevanceTypeHistoryTask;

/** 
@brief 查询所有任务接口
@code
请求路径: /task/api/Tasks/TaskStatus
请求方法: get
@endcode
*/ 
extern NSString * const kTaskApiTasksTaskStatus;

/** 
@brief 根据作业类型机具类型查询参数类型合集
@code
请求路径: /task/api/Tasks/ParameterTypes
请求方法: get
参数列表:

type     integer 作业类型 
toolType integer 机具类型 
@endcode
*/ 
extern NSString * const kTaskApiTasksParameterTypes;

/** 
@brief 查询用作物账本明细
@code
请求路径: /task/api/Tasks/{landId}/{startTime}/{endTime}/CropResources
请求方法: get
参数列表:

landId    string  
startTime string （yyyy-MM-dd HH:mm:ss） 
endTime   string （yyyy-MM-dd HH:mm:ss） 
@endcode
*/ 
extern NSString * const kTaskApiTasksLandIdStartTimeEndTimeCropResources;

/** 
@brief 增加作业数据
@code
请求路径: /task/api/Tasks
请求方法: post
参数列表:

CropTypeId          string  作物类型Id 
Area                number  作业面积（亩）传统车辆作业直接回填地块面积，智能与无人车辆上报工作亩数 
VehicleNo           string  车辆编号 
VehicleType         integer 车辆终端类型 
LandName            string  地块名称 
TaskStepId          string  任务步骤id（作物服务回写） 
CropVarietyId       string  作物品种Id 
Name                string  任务名称 
ResourceTypeName    string  农资类型名称 
ToolTypeName        string  机具类型名称 
Parameter           array   作业参数 
ResourceType        integer 农资类型 
ResourceSubType     integer 农资类型 
EndTime             string  结束时间 
OperatorName        string  操作员名称 
TrackId             string  轨迹id 
LandAddress         string  地块地址 
TrackName           string  轨迹名称 
LandId              string  地块id 
Status              integer 任务状态 
LandArea            number  地块面积 
CreatedTime         string  添加时间 
Operator            string  作业人员：普通农机录入农机操作员；智能农机根据上报填写；无人农机时为空 
ResourceCost        number  农资成本 
Description         string  任务描述 
TaskResource        array   农资 
UpdateBy            string  修改时间 
Width               integer 作业宽幅 
OrgId               string  机构id 
ToolType            integer 机具类型 
CropName            string  作物名称 
TypeName            string  任务类型名称 
StartTime           string  开始时间 
StatusName          string  任务状态名称 
CreateBy            string  创建人 
ActuralStartTime    string  实际开始时间 
VehicleTypeName     string  车辆终端类型名称 
ResourceSubTypeName string  农资类型 
Id                  string   
Type                integer 作业类型 
UpdatedTime         string  修改时间 
VehicleId           string  车辆Id 
DurAtion            integer 作业时长 分钟 
@endcode
*/ 
extern NSString * const kTaskApiTasks_post;

/** 
@brief 查询所有作业（分页）
@code
请求路径: /task/api/Tasks
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
StartTime  string  开始时间（yyyy-MM-dd HH:mm:ss） 
EndTime    string  结束时间（yyyy-MM-dd HH:mm:ss） 
TaskType   integer 任务类型 
AlarmType  integer 报警类型 
AlarmLevel integer 报警级别 
Operator   string  名称 
TaskStatus integer 任务状态 
VehicleId  string  车辆Id 
LandId     string  地块Id 
@endcode
*/ 
extern NSString * const kTaskApiTasks;

/** 
@brief 修改任务信息
@code
请求路径: /task/api/Tasks
请求方法: patch
参数列表:

CropTypeId          string  作物类型Id 
Area                number  作业面积（亩）传统车辆作业直接回填地块面积，智能与无人车辆上报工作亩数 
VehicleNo           string  车辆编号 
VehicleType         integer 车辆终端类型 
LandName            string  地块名称 
TaskStepId          string  任务步骤id（作物服务回写） 
CropVarietyId       string  作物品种Id 
Name                string  任务名称 
ResourceTypeName    string  农资类型名称 
ToolTypeName        string  机具类型名称 
Parameter           array   作业参数 
ResourceType        integer 农资类型 
ResourceSubType     integer 农资类型 
EndTime             string  结束时间 
OperatorName        string  操作员名称 
TrackId             string  轨迹id 
LandAddress         string  地块地址 
TrackName           string  轨迹名称 
LandId              string  地块id 
Status              integer 任务状态 
LandArea            number  地块面积 
CreatedTime         string  添加时间 
Operator            string  作业人员：普通农机录入农机操作员；智能农机根据上报填写；无人农机时为空 
ResourceCost        number  农资成本 
Description         string  任务描述 
TaskResource        array   农资 
UpdateBy            string  修改时间 
Width               integer 作业宽幅 
OrgId               string  机构id 
ToolType            integer 机具类型 
CropName            string  作物名称 
TypeName            string  任务类型名称 
StartTime           string  开始时间 
StatusName          string  任务状态名称 
CreateBy            string  创建人 
ActuralStartTime    string  实际开始时间 
VehicleTypeName     string  车辆终端类型名称 
ResourceSubTypeName string  农资类型 
Id                  string   
Type                integer 作业类型 
UpdatedTime         string  修改时间 
VehicleId           string  车辆Id 
DurAtion            integer 作业时长 分钟 
@endcode
*/ 
extern NSString * const kTaskApiTasks_patch;

/** 
@brief 查询任务类型
@code
请求路径: /task/api/Tasks/Types
请求方法: get
@endcode
*/ 
extern NSString * const kTaskApiTasksTypes;

/** 
@brief 查询农资使用记录
@code
请求路径: /task/api/Tasks/Resources/{landId}
请求方法: get
参数列表:

landId string  
@endcode
*/ 
extern NSString * const kTaskApiTasksResourcesLandId;

/** 
@brief 查询单个机具类型
@code
请求路径: /task/api/Tasks/ToolTypes/{toolType}/{taskType}
请求方法: get
参数列表:

toolType integer 机具类型 
taskType integer 作业类型 
@endcode
*/ 
extern NSString * const kTaskApiTasksToolTypesToolTypeTaskType;

/** 
@brief 查询指定地块成本
@code
请求路径: /task/api/Tasks/Resources
请求方法: post
@endcode
*/ 
extern NSString * const kTaskApiTasksResources;

/** 
@brief 测试
@code
请求路径: /task/api/Tasks/Ping/{pint}
请求方法: get
参数列表:

pint string  
@endcode
*/ 
extern NSString * const kTaskApiTasksPingPint;

/** 
@brief 查询作业id
@code
请求路径: /task/api/Tasks/{relevanceId}/{relevanceType}/taskIds
请求方法: get
参数列表:

relevanceId   string   
relevanceType integer  
@endcode
*/ 
extern NSString * const kTaskApiTasksRelevanceIdRelevanceTypeTaskIds;


#pragma mark TaskStatistics 作业统计服务 
/** 
@brief 查询车辆所有作业汇总数据
@code
请求路径: /task/api/TaskStatistics/{vehicleId}
请求方法: get
参数列表:

vehicleId string  
@endcode
*/ 
extern NSString * const kTaskApiTaskStatisticsVehicleId;

/** 
@brief 查询作业按天汇总数据
@code
请求路径: /task/api/TaskStatistics/{relevanceId}/{month}/{relevanceType}/DayGroupTotal
请求方法: get
参数列表:

relevanceId   string  关联id（vehicleId，landId） 
month         string  （月份）yyyy-MM 
relevanceType integer 关联类型（1：车辆id，2：地块id） 
@endcode
*/ 
extern NSString * const kTaskApiTaskStatisticsRelevanceIdMonthRelevanceTypeDayGroupTotal;

/** 
@brief 查询车辆7天历史数据(不包括当天)
@code
请求路径: /task/api/TaskStatistics/{vehicleId}/WeekTaskTotal
请求方法: get
参数列表:

vehicleId string  
@endcode
*/ 
extern NSString * const kTaskApiTaskStatisticsVehicleIdWeekTaskTotal;

/** 
@brief 查询车辆作业汇总数据(包含当天)
@code
请求路径: /task/api/TaskStatistics/Vehicles/TaskTotal
请求方法: post
@endcode
*/ 
extern NSString * const kTaskApiTaskStatisticsVehiclesTaskTotal;

/** 
@brief 查询用户下所有作业数据与当日作业数
@code
请求路径: /task/api/TaskStatistics/{userId}/TaskTotal
请求方法: get
参数列表:

userId string  
@endcode
*/ 
extern NSString * const kTaskApiTaskStatisticsUserIdTaskTotal;

/** 
@brief 查询车辆最近作业数据汇总
@code
请求路径: /task/api/TaskStatistics/{vehicleId}/RecentTask
请求方法: get
参数列表:

vehicleId string  
@endcode
*/ 
extern NSString * const kTaskApiTaskStatisticsVehicleIdRecentTask;


#pragma mark DataRole 数据角色服务 
/** 
@brief 获取数据角色详情
@code
请求路径: /sys/api/DataRoles/{id}
请求方法: get
参数列表:

id string  
@endcode
*/ 
extern NSString * const kSysApiDataRolesId;

/** 
@brief 增加数据权限
@code
请求路径: /sys/api/DataRoles
请求方法: post
参数列表:

AccessLandControl        integer 是否控制数据权限 
Description              string  描述 
CreatedTime              string  创建时间 
Id                       string   
Name                     string  数据角色名称 
AccessVehicleControlName string  是否控制车辆数据权限 
AccessLandControlName    string  是否控制地块数据权限 
Status                   integer 数据状态 
AccessVehicleControl     integer 是否控制数据权限 
StatusName               string  数据状态名称 
OrgName                  string  机构名称 
OrgId                    string  组织Id 
CreatedBy                string  创建人 
@endcode
*/ 
extern NSString * const kSysApiDataRoles_post;

/** 
@brief 查询所有数据角色（分页）
@code
请求路径: /sys/api/DataRoles
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
StartTime  string  开始时间（yyyy-MM-dd） 
EndTime    string  结束时间（yyyy-MM-dd） 
Status     integer 状态 
@endcode
*/ 
extern NSString * const kSysApiDataRoles;

/** 
@brief 修改数据角色（只能修改名字与描述）
@code
请求路径: /sys/api/DataRoles
请求方法: patch
参数列表:

AccessLandControl        integer 是否控制数据权限 
Description              string  描述 
CreatedTime              string  创建时间 
Id                       string   
Name                     string  数据角色名称 
AccessVehicleControlName string  是否控制车辆数据权限 
AccessLandControlName    string  是否控制地块数据权限 
Status                   integer 数据状态 
AccessVehicleControl     integer 是否控制数据权限 
StatusName               string  数据状态名称 
OrgName                  string  机构名称 
OrgId                    string  组织Id 
CreatedBy                string  创建人 
@endcode
*/ 
extern NSString * const kSysApiDataRoles_patch;


#pragma mark Permission 权限服务 
/** 
@brief 根据角色Id获取权限列表
@code
请求路径: /sys/api/Roles/{roleId}/Permissions
请求方法: get
参数列表:

roleId string  
@endcode
*/ 
extern NSString * const kSysApiRolesRoleIdPermissions;

/** 
@brief 获取权限列表
@code
请求路径: /sys/api/Permissions
请求方法: get
参数列表:

sessionRoleId string 登录用户的角色Id 
specialRoleId string 要分配权限的角色Id 
@endcode
*/ 
extern NSString * const kSysApiPermissions;

/** 
@brief 保存权限
@code
请求路径: /sys/api/Permissions
请求方法: post
@endcode
*/ 
extern NSString * const kSysApiPermissions_post;


#pragma mark Message 消息服务 
/** 
@brief 更新消息
@code
请求路径: /message/api/Messages/status/{id}
请求方法: patch
@endcode
*/ 
extern NSString * const kMessageApiMessagesStatusId;

/** 
@brief 查询所有业务类型
@code
请求路径: /message/api/Messages/bizType
请求方法: get
@endcode
*/ 
extern NSString * const kMessageApiMessagesBizType;

/** 
@brief 增加消息
@code
请求路径: /message/api/Messages
请求方法: post
参数列表:

Receiver    string  接收人Id 
Content     string  消息内容 
CreatedTime string  创建时间 
Id          string   
ChannelName string  发送渠道名称 
Channel     integer 发送渠道（组合：11=app+web；101-sms+app；111-app+web+sms） 
SubType     string  消息子类型编码 
LevelName   string  消息等级名称 
BizTypeName string  业务类型名称 
ReadTime    string  读取时间 
Type        string  消息类型编码 
BizId       string  业务Id 
BizType     integer 业务类型 
Level       integer 消息等级 
SentTime    string  发送时间 
Status      integer 状态 0-未发送，1-已发送未读，2-已读 
StatusName  string  状态名称 
@endcode
*/ 
extern NSString * const kMessageApiMessages_post;

/** 
@brief 查询所有消息（分页）
@code
请求路径: /message/api/Messages
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
StartTime  string  开始时间（yyyy-MM-dd HH:mm:ss） 
EndTime    string  结束时间（yyyy-MM-dd HH:mm:ss） 
BizType    integer 业务类型 
BizId      string  业务Id 
Status     integer 状态 0-未发送，1-已发送未读，2-已读 
Receiver   string  接收人Id（通常为当前用户id） 
@endcode
*/ 
extern NSString * const kMessageApiMessages;

/** 
@brief 查询所有状态
@code
请求路径: /message/api/Messages/status
请求方法: get
@endcode
*/ 
extern NSString * const kMessageApiMessagesStatus;

/** 
@brief 测试
@code
请求路径: /message/api/Messages/Ping{ping}
请求方法: get
参数列表:

ping string (null) 
@endcode
*/ 
extern NSString * const kMessageApiMessagesPingping;

/** 
@brief 查询单条消息
@code
请求路径: /message/api/Messages/{messageId}
请求方法: get
参数列表:

messageId string 消息id 
@endcode
*/ 
extern NSString * const kMessageApiMessagesMessageId;


#pragma mark Role 角色服务 
/** 
@brief 查询单个角色详情
@code
请求路径: /sys/api/Roles/{roleId}
请求方法: get
参数列表:

roleId string 角色id 
@endcode
*/ 
extern NSString * const kSysApiRolesRoleId;

/** 
@brief 添加角色
@code
请求路径: /sys/api/Roles
请求方法: post
参数列表:

Description string  描述 
CreatedTime string  创建时间 
Id          string   
Name        string  角色名称 
Menus       array   菜单id,code 
Type        integer 角色类型 
TypeName    string  角色类型名称 
Status      integer 数据状态 
StatusName  string  数据状态名称 
OrgName     string  机构名称 
OrgId       string  角色所在的组织Id 
CreatedBy   string  创建人 
@endcode
*/ 
extern NSString * const kSysApiRoles_post;

/** 
@brief 查询所有角色（分页）
@code
请求路径: /sys/api/Roles
请求方法: get
参数列表:

PageIndex  integer 页码 
PageSize   integer 页容量 
SortColumn string  排序列 
IsAsc      boolean 是否升序/排序方式 true-ASC，false-DESC 
KeyValue   string  搜索关键字 
OrgId      string  机构Id 
StartTime  string  开始时间（yyyy-MM-dd） 
EndTime    string  结束时间（yyyy-MM-dd） 
Status     integer 状态 
@endcode
*/ 
extern NSString * const kSysApiRoles;

/** 
@brief 修改角色数据（同一机构下角色名称不能重复）
@code
请求路径: /sys/api/Roles
请求方法: patch
参数列表:

Description string  描述 
CreatedTime string  创建时间 
Id          string   
Name        string  角色名称 
Menus       array   菜单id,code 
Type        integer 角色类型 
TypeName    string  角色类型名称 
Status      integer 数据状态 
StatusName  string  数据状态名称 
OrgName     string  机构名称 
OrgId       string  角色所在的组织Id 
CreatedBy   string  创建人 
@endcode
*/ 
extern NSString * const kSysApiRoles_patch;


