//
//  NetworkApi.h
//  GetSwagger
//
//  Created by delims on 2020/08/03.
//  Copyright © 2020 delims. All rights reserved.

#import <Foundation/Foundation.h>

#pragma mark AlarmSetting 作业报警设置服务 
static NSString * const kTaskApiAlarmSettingsAlarmSettingsId = @"/task/api/AlarmSettings/{alarmSettingsId}"; //查询单个报警设置信息
static NSString * const kTaskApiAlarmSettingsAlarmSettingsId_delete = @"/task/api/AlarmSettings/{alarmSettingsId}"; //删除报警设置数据
static NSString * const kTaskApiAlarmSettingsAlarmTypes = @"/task/api/AlarmSettings/AlarmTypes"; //查询所有报警类型
static NSString * const kTaskApiAlarmSettings_post = @"/task/api/AlarmSettings"; //增加作业数据
static NSString * const kTaskApiAlarmSettings = @"/task/api/AlarmSettings"; //查询所有作业报警设置（分页）
static NSString * const kTaskApiAlarmSettings_patch = @"/task/api/AlarmSettings"; //修改报警设置数据
static NSString * const kTaskApiAlarmSettingsAlarmLevel = @"/task/api/AlarmSettings/AlarmLevel"; //查询所有报警级别

#pragma mark User 用户服务 
static NSString * const kSysApiUsersUsers = @"/sys/api/Users/Users"; //查询多个用户信息
static NSString * const kSysApiUsersUserIdPassWord = @"/sys/api/Users/{userId}/{passWord}"; //用户修改密码
static NSString * const kSysApiUsers_post = @"/sys/api/Users"; //增加用户信息（登录名称重复，同一机构下用户名称不能重复）
static NSString * const kSysApiUsers_patch = @"/sys/api/Users"; //修改用户信息（同一机构下用户名称不能重复）
static NSString * const kSysApiUsers = @"/sys/api/Users"; //查询所有用户（分页）
static NSString * const kSysApiUsersPosition = @"/sys/api/Users/Position"; //管理员修改用户岗位与数据权限
static NSString * const kSysApiUsersUserId = @"/sys/api/Users/{userId}"; //获取用户信息
static NSString * const kSysApiUsersOrgIdPositionType = @"/sys/api/Users/{orgId}/{positionType}"; //查询多个用户信息

#pragma mark Area 区域服务 
static NSString * const kSysApiAreas = @"/sys/api/Areas"; //获取所有省、市、区编码

#pragma mark VehicleType 车辆类型服务 
static NSString * const kVehicleApiVehicleTypesVehicleTypeId = @"/vehicle/api/VehicleTypes/{vehicleTypeId}"; //根据车型Id获取车型信息
static NSString * const kVehicleApiVehicleTypesVehicleTypeId_delete = @"/vehicle/api/VehicleTypes/{vehicleTypeId}"; //根据车型Id删除车型信息
static NSString * const kVehicleApiOrganizationsOrgIdVehicleTypes = @"/vehicle/api/Organizations/{orgId}/VehicleTypes"; //根据机构Id获取所有车型
static NSString * const kVehicleApiVehicleTypes = @"/vehicle/api/VehicleTypes"; //获取车型分页信息
static NSString * const kVehicleApiVehicleTypes_patch = @"/vehicle/api/VehicleTypes"; //根据车型Id编辑车型信息
static NSString * const kVehicleApiVehicleTypes_post = @"/vehicle/api/VehicleTypes"; //添加车型信息
static NSString * const kVehicleApiOrganizationsOrgIdBrandsBrandIdVehicleTypes = @"/vehicle/api/Organizations/{orgId}/Brands/{brandId}/VehicleTypes"; //根据机构Id和品牌Id获取车辆类型列表

#pragma mark Land 地块服务 
static NSString * const kLandApiLands = @"/land/api/Lands"; //获取地块分页信息
static NSString * const kLandApiLands_patch = @"/land/api/Lands"; //根据地块Id编辑地块信息
static NSString * const kLandApiLands_post = @"/land/api/Lands"; //添加地块信息
static NSString * const kLandApiLand = @"/land/api/Land"; //根据机构Ids获取地块列表
static NSString * const kLandApiOrganizationsOrgIdLands = @"/land/api/Organizations/{orgId}/Lands"; //根据机构Id获取地块信息（不分页）
static NSString * const kLandApiOrganizationsOrgIdLandsDistribute = @"/land/api/Organizations/{orgId}/Lands/Distribute"; //根据机构Id获取地块分布信息
static NSString * const kLandApiAddressByCoordinate = @"/land/api/AddressByCoordinate"; //根据经纬度获取位置
static NSString * const kLandApiLandsStatistic = @"/land/api/Lands/Statistic"; //根据机构Id获取地块统计信息
static NSString * const kLandApiLandsLandId = @"/land/api/Lands/{landId}"; //根据地块Id获取地块信息
static NSString * const kLandApiLandsLandId_delete = @"/land/api/Lands/{landId}"; //根据地块Id删除地块信息
static NSString * const kLandApiOrganizationsOrgIdImportLands = @"/land/api/Organizations/{orgId}/ImportLands"; //导入地块
static NSString * const kLandApiLandTemplate = @"/land/api/LandTemplate"; //下载地块导入模板

#pragma mark Terminals 终端服务 
static NSString * const kVehicleApiOrganizationsOrgIdTerminalsUnBind = @"/vehicle/api/Organizations/{orgId}/Terminals/UnBind"; //根据机构Id获取当前机构下未绑定的终端列表
static NSString * const kVehicleApiTerminalTemplate = @"/vehicle/api/TerminalTemplate"; //下载导入终端和Sim卡模板
static NSString * const kVehicleApiTerminals = @"/vehicle/api/Terminals"; //获取终端分页信息
static NSString * const kVehicleApiTerminals_patch = @"/vehicle/api/Terminals"; //根据终端编号编辑终端信息
static NSString * const kVehicleApiTerminals_post = @"/vehicle/api/Terminals"; //添加终端信息
static NSString * const kVehicleApiTerminalsTerminalNo = @"/vehicle/api/Terminals/{terminalNo}"; //根据终端编号获取终端信息
static NSString * const kVehicleApiTerminalsTerminalNo_delete = @"/vehicle/api/Terminals/{terminalNo}"; //根据终端编号删除终端信息
static NSString * const kVehicleApiTerminalsTerminalNoSimcardsSimCardNo = @"/vehicle/api/Terminals/{terminalNo}/Simcards/{simCardNo}"; //绑定终端和SIM卡
static NSString * const kVehicleApiTerminalsTerminalNoSimcardsSimCardNo_delete = @"/vehicle/api/Terminals/{terminalNo}/Simcards/{simCardNo}"; //解绑终端和Sim卡
static NSString * const kVehicleApiOrganizationsOrgIdImportTerminalsAndSimCards = @"/vehicle/api/Organizations/{orgId}/ImportTerminalsAndSimCards"; //导入终端和Sim卡

#pragma mark Brand 品牌服务 
static NSString * const kVehicleApiBrandsBrandId = @"/vehicle/api/Brands/{brandId}"; //根据品牌号获取品牌信息
static NSString * const kVehicleApiBrandsBrandId_delete = @"/vehicle/api/Brands/{brandId}"; //根据品牌号删除品牌信息
static NSString * const kVehicleApiOrganizationsOrgIdBrands = @"/vehicle/api/Organizations/{orgId}/Brands"; //根据机构Id获取品牌列表
static NSString * const kVehicleApiBrands = @"/vehicle/api/Brands"; //获取品牌分页信息
static NSString * const kVehicleApiBrands_patch = @"/vehicle/api/Brands"; //根据品牌号编辑品牌信息
static NSString * const kVehicleApiBrands_post = @"/vehicle/api/Brands"; //添加品牌信息

#pragma mark Soil 土壤服务 
static NSString * const kLandApiLandsLandIdSoils = @"/land/api/Lands/{landId}/Soils"; //根据时间段查询地块的土壤信息
static NSString * const kLandApiSoils = @"/land/api/Soils"; //添加土壤信息
static NSString * const kLandApiLandsLandIdSoil = @"/land/api/Lands/{landId}/Soil"; //获取当前地块的土壤信息

#pragma mark Cameras 摄像机服务 
static NSString * const kVehicleApiCamerasCameraNo = @"/vehicle/api/Cameras/{cameraNo}"; //根据摄像机编号获取摄像机信息
static NSString * const kVehicleApiCamerasCameraNo_delete = @"/vehicle/api/Cameras/{cameraNo}"; //根据摄像机编号删除摄像机信息
static NSString * const kVehicleApiCameras = @"/vehicle/api/Cameras"; //获取摄像机分页信息
static NSString * const kVehicleApiCameras_patch = @"/vehicle/api/Cameras"; //根据摄像机编号编辑摄像机信息
static NSString * const kVehicleApiCameras_post = @"/vehicle/api/Cameras"; //添加摄像机信息
static NSString * const kVehicleApiOrganizationsOrgIdCamerasUnBind = @"/vehicle/api/Organizations/{orgId}/Cameras/UnBind"; //根据机构Id获取当前机构下未绑定的摄像机列表

#pragma mark Output 农资出库服务 
static NSString * const kResourceApiOutputs_post = @"/resource/api/Outputs"; //增加农资出库
static NSString * const kResourceApiOutputs = @"/resource/api/Outputs"; //查询所有农资出库（分页）
static NSString * const kResourceApiOutputs_patch = @"/resource/api/Outputs"; //修改农资出库
static NSString * const kResourceApiOutputsId = @"/resource/api/Outputs/{id}"; //查询农资出库详情
static NSString * const kResourceApiOutputsOutputTypes = @"/resource/api/Outputs/OutputTypes"; //查询所有出库类型
static NSString * const kResourceApiOutputsResourceIdsResources = @"/resource/api/Outputs/resourceIds/Resources"; //查询农资使用记录

#pragma mark Plant 种植服务 
static NSString * const kCropApiLandsLandIdPlantPlans = @"/crop/api/Lands/{landId}/PlantPlans"; //根据地块Id、开始、结束时间查询种植计划列表
static NSString * const kCropApiPlantPlansPlantPlanId = @"/crop/api/PlantPlans/{plantPlanId}"; //根据种植计划Id获取种植计划详情
static NSString * const kCropApiPlantPlansPlantPlanId_delete = @"/crop/api/PlantPlans/{plantPlanId}"; //(null)
static NSString * const kCropApiOrganizationsOrgIdPlantPlans = @"/crop/api/Organizations/{orgId}/PlantPlans"; //获取种植计划列表不分页
static NSString * const kCropApiPlantPlansPlantPlanStep = @"/crop/api/PlantPlans/PlantPlanStep"; //设置种植计划步骤的状态
static NSString * const kCropApiPlantPlans = @"/crop/api/PlantPlans"; //获取种植计划分页信息
static NSString * const kCropApiPlantPlans_post = @"/crop/api/PlantPlans"; //添加种植计划
static NSString * const kCropApiPlantPlans_patch = @"/crop/api/PlantPlans"; //编辑种植计划

#pragma mark Crop 作物服务 
static NSString * const kCropApiCrops_post = @"/crop/api/Crops"; //添加作物信息
static NSString * const kCropApiCrops_patch = @"/crop/api/Crops"; //根据作物Id编辑作物信息
static NSString * const kCropApiCrops = @"/crop/api/Crops"; //根据机构Id、作物类型Id获取当前种植作物列表
static NSString * const kCropApiCropVarietiesCropVarietyId = @"/crop/api/CropVarieties/{cropVarietyId}"; //根据作物品种号获取作物品种信息
static NSString * const kCropApiCropVarietiesCropVarietyId_delete = @"/crop/api/CropVarieties/{cropVarietyId}"; //根据作物品种号删除作物品种信息
static NSString * const kCropApiCropsCropId_delete = @"/crop/api/Crops/{cropId}"; //根据作物Id删除作物信息
static NSString * const kCropApiCropsCropId = @"/crop/api/Crops/{cropId}"; //根据作物Id获取作物信息
static NSString * const kCropApiOrganizationsOrgIdCropTypes = @"/crop/api/Organizations/{orgId}/CropTypes"; //获取作物类型列表信息（不分页）
static NSString * const kCropApiLandsLandIdCrop = @"/crop/api/Lands/{landId}/Crop"; //根据地块Id获取当前的种植作物
static NSString * const kCropApiCropsLandsLandId = @"/crop/api/Crops/Lands/{landId}"; //根据地块Id判断是否有生长作物
static NSString * const kCropApiCropVarieties = @"/crop/api/CropVarieties"; //获取作物品种分页信息
static NSString * const kCropApiCropVarieties_patch = @"/crop/api/CropVarieties"; //根据作物品种号编辑作物品种信息
static NSString * const kCropApiCropVarieties_post = @"/crop/api/CropVarieties"; //添加作物品种信息
static NSString * const kCropApiCropTypes = @"/crop/api/CropTypes"; //获取作物类型
static NSString * const kCropApiCropTypesCropTypeIdCropVariety = @"/crop/api/CropTypes/{cropTypeId}/CropVariety"; //根据作物类型获取作物品种类型
static NSString * const kCropApiCropsAccounts = @"/crop/api/Crops/Accounts"; //根据起止时间查询作物种植账本

#pragma mark Organization 机构服务 
static NSString * const kSysApiOrganizationTypes = @"/sys/api/OrganizationTypes"; //查询所有组织机构机构类型
static NSString * const kSysApiOrganizationsOrgs = @"/sys/api/Organizations/Orgs"; //查询多个机构
static NSString * const kSysApiOrganizationsOrgIdChildIds = @"/sys/api/Organizations/{orgId}/ChildIds"; //获取当前机构以及以下机构ChildIds
static NSString * const kSysApiOrganizations = @"/sys/api/Organizations"; //增加机构
static NSString * const kSysApiOrganizations_patch = @"/sys/api/Organizations"; //修改机构信息
static NSString * const kSysApiOrganizationsOrgTree = @"/sys/api/Organizations/OrgTree"; //查询机构树
static NSString * const kSysApiOrganizationsOrgId = @"/sys/api/Organizations/{orgId}"; //查询单个机构
static NSString * const kSysApiOrganizationsOrgIdOrgId = @"/sys/api/Organizations/{orgId}/orgId"; //机构是否存在
static NSString * const kSysApiOrganizationSubTypesOrgTypeCode = @"/sys/api/OrganizationSubTypes/{orgTypeCode}"; //查询机构子类型

#pragma mark FuelDepot 油库服务 
static NSString * const kVehicleApiFuelDepotsFuelDepotNo = @"/vehicle/api/FuelDepots/{fuelDepotNo}"; //根据油库Id获取油库信息
static NSString * const kVehicleApiFuelDepotsFuelDepotNo_delete = @"/vehicle/api/FuelDepots/{fuelDepotNo}"; //根据油库Id删除油库信息
static NSString * const kVehicleApiFuelDepots = @"/vehicle/api/FuelDepots"; //根据机构Id、燃油类型,获取油库信息
static NSString * const kVehicleApiFuelDepots_patch = @"/vehicle/api/FuelDepots"; //根据油库Id编辑油库信息
static NSString * const kVehicleApiFuelDepots_post = @"/vehicle/api/FuelDepots"; //添加油库信息
static NSString * const kVehicleApiOrganizationsOrgIdFuelDepotsFuelTypesFuelType = @"/vehicle/api/Organizations/{orgId}/FuelDepots/FuelTypes/{fuelType}"; //根据机构Id和燃油类型获取油库信息

#pragma mark Simcards Sim卡服务 
static NSString * const kVehicleApiSimcardsSimcardNo = @"/vehicle/api/Simcards/{simcardNo}"; //根据Sim卡号获取Sim卡信息
static NSString * const kVehicleApiSimcardsSimcardNo_delete = @"/vehicle/api/Simcards/{simcardNo}"; //根据Sim卡号删除Sim卡信息
static NSString * const kVehicleApiSimcards = @"/vehicle/api/Simcards"; //获取Sim卡分页信息
static NSString * const kVehicleApiSimcards_patch = @"/vehicle/api/Simcards"; //根据Sim卡号编辑Sim卡信息
static NSString * const kVehicleApiSimcards_post = @"/vehicle/api/Simcards"; //添加Sim卡信息

#pragma mark Fuels 燃油服务 
static NSString * const kVehicleApiFuelFlowsFuelFlowId = @"/vehicle/api/FuelFlows/{fuelFlowId}"; //根据燃油流水Id获取燃油流水信息
static NSString * const kVehicleApiFuelFlows = @"/vehicle/api/FuelFlows"; //获取燃油流水分页信息
static NSString * const kVehicleApiFuelFlows_patch = @"/vehicle/api/FuelFlows"; //根据燃油流水Id编辑燃油流水信息
static NSString * const kVehicleApiFuelFlows_post = @"/vehicle/api/FuelFlows"; //添加燃油流水信息
static NSString * const kVehicleApiFuelTypes = @"/vehicle/api/FuelTypes"; //获取燃油类型（燃油类型以及相关的标号）

#pragma mark TerminalType 终端类型服务 
static NSString * const kVehicleApiTerminalTypes = @"/vehicle/api/TerminalTypes"; //获取所有终端类型

#pragma mark Input 农资入库服务 
static NSString * const kResourceApiInputsInputTypes = @"/resource/api/Inputs/InputTypes"; //查询所有入库类型
static NSString * const kResourceApiInputs_post = @"/resource/api/Inputs"; //增加农资入库
static NSString * const kResourceApiInputs = @"/resource/api/Inputs"; //查询所有农资入库（分页）
static NSString * const kResourceApiInputs_patch = @"/resource/api/Inputs"; //修改农资入库
static NSString * const kResourceApiInputsId = @"/resource/api/Inputs/{id}"; //查询农资入库详情

#pragma mark Status 状态服务 
static NSString * const kSysApiStatusNotAllStatus = @"/sys/api/Status/NotAllStatus"; //获取数据状态不包含全部
static NSString * const kSysApiStatusAllStatus = @"/sys/api/Status/AllStatus"; //获取所有数据状态

#pragma mark DataPermission 数据权限服务 
static NSString * const kSysApiDataPermissions = @"/sys/api/DataPermissions"; //根据Token、微服务标识获取对应的数据权限

#pragma mark Resource 农资服务 
static NSString * const kResourceApiResourcesStatus = @"/resource/api/Resources/Status"; //查询数据状态
static NSString * const kResourceApiResourcesResourceTypes = @"/resource/api/Resources/ResourceTypes"; //查询所有农资类型
static NSString * const kResourceApiResources_post = @"/resource/api/Resources"; //增加农资数据
static NSString * const kResourceApiResources = @"/resource/api/Resources"; //查询所有农资（分页）
static NSString * const kResourceApiResources_patch = @"/resource/api/Resources"; //修改农资
static NSString * const kResourceApiResourcesId = @"/resource/api/Resources/{id}"; //查询农资详情
static NSString * const kResourceApiResourcesId_delete = @"/resource/api/Resources/{id}"; //删除农资
static NSString * const kResourceApiResourcesIdsResources = @"/resource/api/Resources/ids/Resources"; //查询多条农资
static NSString * const kResourceApiResourcesTypeResourceSubTypes = @"/resource/api/Resources/{type}/ResourceSubTypes"; //查询农资下的子类型
static NSString * const kResourceApiResourcesTypeSubTypeResources = @"/resource/api/Resources/{type}/{subType}/Resources"; //查询多条农资
static NSString * const kResourceApiTasksPingPong = @"/resource/api/Tasks/Ping/{pong}"; //测试

#pragma mark Event 作业质量报警服务 
static NSString * const kTaskApiEventsEventId = @"/task/api/Events/{eventId}"; //查询单条作业报警事件记录
static NSString * const kTaskApiEvents_post = @"/task/api/Events"; //增加作业报警事件数据
static NSString * const kTaskApiEvents = @"/task/api/Events"; //查询所有增加作业报警事件记录（分页）

#pragma mark Vehicles 车辆服务 
static NSString * const kVehicleApiVehiclesVehicleIdCamerasCameraNo = @"/vehicle/api/Vehicles/{vehicleId}/Cameras/{cameraNo}"; //绑定车辆摄像机
static NSString * const kVehicleApiVehiclesVehicleIdCamerasCameraNo_delete = @"/vehicle/api/Vehicles/{vehicleId}/Cameras/{cameraNo}"; //解绑车辆和摄像机
static NSString * const kVehicleApiVehiclesVehicleIdOrganizationsOrgId = @"/vehicle/api/Vehicles/{vehicleId}/Organizations/{orgId}"; //车辆调配
static NSString * const kVehicleApiVehiclesHistory = @"/vehicle/api/Vehicles/History"; //根据车辆Id、开始时间、结束时间获取历史轨迹
static NSString * const kVehicleApiVehiclesVehicleIdRealTime = @"/vehicle/api/Vehicles/{vehicleId}/RealTime"; //获取车辆的实时信息
static NSString * const kVehicleApiVehiclesVehicleId = @"/vehicle/api/Vehicles/{vehicleId}"; //根据车辆Id获取车辆信息
static NSString * const kVehicleApiVehiclesVehicleId_delete = @"/vehicle/api/Vehicles/{vehicleId}"; //根据车辆Id删除车辆信息
static NSString * const kVehicleApiVehiclesVehicleId_put = @"/vehicle/api/Vehicles/{vehicleId}"; //更新车辆的作业和机具类型
static NSString * const kVehicleApiVehicles = @"/vehicle/api/Vehicles"; //获取车辆分页信息
static NSString * const kVehicleApiVehicles_patch = @"/vehicle/api/Vehicles"; //根据车辆Id编辑车辆信息
static NSString * const kVehicleApiVehicles_post = @"/vehicle/api/Vehicles"; //添加车辆信息
static NSString * const kVehicleApiOrganizationsOrgIdVehicles = @"/vehicle/api/Organizations/{orgId}/Vehicles"; //根据机构Id获取车辆信息（不分页）
static NSString * const kVehicleApiVehiclesVehicleIdBindRecords = @"/vehicle/api/Vehicles/{vehicleId}/BindRecords"; //获取车辆的绑定记录
static NSString * const kVehicleApiVehiclesVehicleIdTerminalsTerminalNo = @"/vehicle/api/Vehicles/{vehicleId}/Terminals/{terminalNo}"; //绑定车辆和终端
static NSString * const kVehicleApiVehiclesVehicleIdTerminalsTerminalNo_delete = @"/vehicle/api/Vehicles/{vehicleId}/Terminals/{terminalNo}"; //解绑车辆和终端
static NSString * const kVehicleApiMonitorsOrganizationsOrgIdVehiclesCount = @"/vehicle/api/Monitors/Organizations/{orgId}/Vehicles/Count"; //根据机构Id获取车辆在线数
static NSString * const kVehicleApiMonitorsOrganizationsOrgIdVehiclesDistribute = @"/vehicle/api/Monitors/Organizations/{orgId}/Vehicles/Distribute"; //根据机构Id获取车辆分布信息
static NSString * const kVehicleApiMonitorsVehicles = @"/vehicle/api/Monitors/Vehicles"; //根据在线离线状态获取车辆列表
static NSString * const kVehicleApiVehiclesStatistic = @"/vehicle/api/Vehicles/Statistic"; //根据机构Id按车型统计

#pragma mark Template 种植模板服务 
static NSString * const kCropApiTemplatesTemplateId = @"/crop/api/Templates/{templateId}"; //根据模板Id获取种植模板
static NSString * const kCropApiTemplates = @"/crop/api/Templates"; //根据作物类型获取作物品种类型

#pragma mark Grow 生长记录 
static NSString * const kCropApiCropCropIdGrows = @"/crop/api/Crop/{cropId}/Grows"; //根据作物Id获取生长记录
static NSString * const kCropApiGrows = @"/crop/api/Grows"; //添加生长记录
static NSString * const kCropApiGrows_patch = @"/crop/api/Grows"; //编辑生长记录
static NSString * const kCropApiGrowsGrowId_delete = @"/crop/api/Grows/{growId}"; //根据作物生长记录Id删除作物生长记录
static NSString * const kCropApiGrowsGrowId = @"/crop/api/Grows/{growId}"; //根据作物生长记录Id获取记录详情

#pragma mark Track 地块轨迹服务 
static NSString * const kLandApiTracksTrackScope = @"/land/api/tracks/TrackScope"; //查询多条轨迹
static NSString * const kLandApiTracks = @"/land/api/tracks"; //获取地块轨迹分页信息
static NSString * const kLandApiTracks_patch = @"/land/api/tracks"; //根据地块轨迹Id编辑地块轨迹信息
static NSString * const kLandApiTracks_post = @"/land/api/tracks"; //添加地块轨迹信息
static NSString * const kLandApiTrackTrackId = @"/land/api/track/{trackId}"; //根据地块轨迹Id获取地块轨迹信息
static NSString * const kLandApiTrackTrackId_delete = @"/land/api/track/{trackId}"; //根据地块轨迹Id删除地块轨迹信息
static NSString * const kLandApiTaskTypeTracks = @"/land/api/taskType/tracks"; //查询地块下的所有轨迹

#pragma mark SolutionType 方案类型服务 
static NSString * const kSysApiSolutionTypesSolutionType = @"/sys/api/SolutionTypes/SolutionType"; //查询所有方案类型

#pragma mark Position 岗位服务 
static NSString * const kSysApiPositions_post = @"/sys/api/Positions"; //增加岗位数据（同一机构下岗位名称不能重复）
static NSString * const kSysApiPositions = @"/sys/api/Positions"; //查询所有岗位（分页）
static NSString * const kSysApiPositions_patch = @"/sys/api/Positions"; //修改岗位数据（同一机构下岗位名称不能重复）
static NSString * const kSysApiPositionsOrgIdPosition = @"/sys/api/Positions/{orgId}Position"; //查询机构下所有正常岗位
static NSString * const kSysApiPositionsPresetPosition = @"/sys/api/Positions/PresetPosition"; //获取预置岗位
static NSString * const kSysApiPositionsPositionId = @"/sys/api/Positions/{positionId}"; //查询单个岗位详情

#pragma mark Login 登录服务 
static NSString * const kSysApiVerifyCode = @"/sys/api/VerifyCode"; //验证码
static NSString * const kSysApiAppLogin = @"/sys/api/AppLogin"; //App登录
static NSString * const kSysApiIndex = @"/sys/api/Index"; //测试
static NSString * const kSysApiLogin = @"/sys/api/Login"; //登录接口
static NSString * const kSysApiLogOut = @"/sys/api/LogOut"; //登出接口
static NSString * const kSysApiValidToken = @"/sys/api/ValidToken"; //Token验证接口

#pragma mark Task 作业服务 
static NSString * const kTaskApiTasksStatusTaskIdStatus = @"/task/api/Tasks/status/{taskId}/{status}"; //修改任务状态
static NSString * const kTaskApiTasksToolTypeTaskType = @"/task/api/Tasks/ToolType/{taskType}"; //机具类型
static NSString * const kTaskApiTasksTaskId = @"/task/api/Tasks/{taskId}"; //查询单个任务
static NSString * const kTaskApiTasksTaskId_delete = @"/task/api/Tasks/{taskId}"; //删除任务
static NSString * const kTaskApiTasksTaksTypeStatistics = @"/task/api/Tasks/taksType/statistics"; //查询机构下任务类型统计
static NSString * const kTaskApiTasksTaskResourceResourceId = @"/task/api/Tasks/taskResource/{resourceId}"; //农资是否被引用
static NSString * const kTaskApiTasksTaskResourceResourceIds = @"/task/api/Tasks/taskResource/resourceIds"; //农资是否被引用返回多个
static NSString * const kTaskApiTasksRelevanceIdRelevanceTypeHistoryTask = @"/task/api/Tasks/{relevanceId}/{relevanceType}/HistoryTask"; //查询作业历史
static NSString * const kTaskApiTasksTaskStatus = @"/task/api/Tasks/TaskStatus"; //查询所有任务接口
static NSString * const kTaskApiTasksParameterTypes = @"/task/api/Tasks/ParameterTypes"; //根据作业类型机具类型查询参数类型合集
static NSString * const kTaskApiTasksLandIdStartTimeEndTimeCropResources = @"/task/api/Tasks/{landId}/{startTime}/{endTime}/CropResources"; //查询用作物账本明细
static NSString * const kTaskApiTasks_post = @"/task/api/Tasks"; //增加作业数据
static NSString * const kTaskApiTasks = @"/task/api/Tasks"; //查询所有作业（分页）
static NSString * const kTaskApiTasks_patch = @"/task/api/Tasks"; //修改任务信息
static NSString * const kTaskApiTasksTypes = @"/task/api/Tasks/Types"; //查询任务类型
static NSString * const kTaskApiTasksResourcesLandId = @"/task/api/Tasks/Resources/{landId}"; //查询农资使用记录
static NSString * const kTaskApiTasksToolTypesToolTypeTaskType = @"/task/api/Tasks/ToolTypes/{toolType}/{taskType}"; //查询单个机具类型
static NSString * const kTaskApiTasksResources = @"/task/api/Tasks/Resources"; //查询指定地块成本
static NSString * const kTaskApiTasksPingPint = @"/task/api/Tasks/Ping/{pint}"; //测试
static NSString * const kTaskApiTasksRelevanceIdRelevanceTypeTaskIds = @"/task/api/Tasks/{relevanceId}/{relevanceType}/taskIds"; //查询作业id

#pragma mark TaskStatistics 作业统计服务 
static NSString * const kTaskApiTaskStatisticsVehicleId = @"/task/api/TaskStatistics/{vehicleId}"; //查询车辆所有作业汇总数据
static NSString * const kTaskApiTaskStatisticsRelevanceIdMonthRelevanceTypeDayGroupTotal = @"/task/api/TaskStatistics/{relevanceId}/{month}/{relevanceType}/DayGroupTotal"; //查询作业按天汇总数据
static NSString * const kTaskApiTaskStatisticsVehicleIdWeekTaskTotal = @"/task/api/TaskStatistics/{vehicleId}/WeekTaskTotal"; //查询车辆7天历史数据(不包括当天)
static NSString * const kTaskApiTaskStatisticsVehiclesTaskTotal = @"/task/api/TaskStatistics/Vehicles/TaskTotal"; //查询车辆作业汇总数据(包含当天)
static NSString * const kTaskApiTaskStatisticsUserIdTaskTotal = @"/task/api/TaskStatistics/{userId}/TaskTotal"; //查询用户下所有作业数据与当日作业数
static NSString * const kTaskApiTaskStatisticsVehicleIdRecentTask = @"/task/api/TaskStatistics/{vehicleId}/RecentTask"; //查询车辆最近作业数据汇总

#pragma mark DataRole 数据角色服务 
static NSString * const kSysApiDataRolesId = @"/sys/api/DataRoles/{id}"; //获取数据角色详情
static NSString * const kSysApiDataRoles_post = @"/sys/api/DataRoles"; //增加数据权限
static NSString * const kSysApiDataRoles = @"/sys/api/DataRoles"; //查询所有数据角色（分页）
static NSString * const kSysApiDataRoles_patch = @"/sys/api/DataRoles"; //修改数据角色（只能修改名字与描述）

#pragma mark Permission 权限服务 
static NSString * const kSysApiRolesRoleIdPermissions = @"/sys/api/Roles/{roleId}/Permissions"; //根据角色Id获取权限列表
static NSString * const kSysApiPermissions = @"/sys/api/Permissions"; //获取权限列表
static NSString * const kSysApiPermissions_post = @"/sys/api/Permissions"; //保存权限

#pragma mark Message 消息服务 
static NSString * const kMessageApiMessagesStatusId = @"/message/api/Messages/status/{id}"; //更新消息
static NSString * const kMessageApiMessagesBizType = @"/message/api/Messages/bizType"; //查询所有业务类型
static NSString * const kMessageApiMessages_post = @"/message/api/Messages"; //增加消息
static NSString * const kMessageApiMessages = @"/message/api/Messages"; //查询所有消息（分页）
static NSString * const kMessageApiMessagesStatus = @"/message/api/Messages/status"; //查询所有状态
static NSString * const kMessageApiMessagesPingping = @"/message/api/Messages/Ping{ping}"; //测试
static NSString * const kMessageApiMessagesMessageId = @"/message/api/Messages/{messageId}"; //查询单条消息

#pragma mark Role 角色服务 
static NSString * const kSysApiRolesRoleId = @"/sys/api/Roles/{roleId}"; //查询单个角色详情
static NSString * const kSysApiRoles_post = @"/sys/api/Roles"; //添加角色
static NSString * const kSysApiRoles = @"/sys/api/Roles"; //查询所有角色（分页）
static NSString * const kSysApiRoles_patch = @"/sys/api/Roles"; //修改角色数据（同一机构下角色名称不能重复）

