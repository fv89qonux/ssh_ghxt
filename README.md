## 本项目实现的最终作用是基于SSH医疗门诊预约挂号管理系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 医生管理
 - 医院公告管理
 - 用户信息管理
 - 科室管理
 - 管理员登录
### 第2个角色为医生角色，实现了如下功能：
 - 医生登录
 - 处理病人挂号信息
 - 查看病人挂号信息
### 第3个角色为患者角色，实现了如下功能：
 - 医生查询
 - 患者登录
 - 患者首页
 - 挂号
 - 查看医生资料
 - 查看挂号记录
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_ghxt

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [t_football_game](#t_football_game) |  |
| [t_football_league](#t_football_league) |  |
| [t_football_team](#t_football_team) | 球队表 |
| [t_football_team_league](#t_football_team_league) |  |
| [t_gonggao](#t_gonggao) |  |
| [t_guahao](#t_guahao) |  |
| [t_keshi](#t_keshi) |  |
| [t_lianjie](#t_lianjie) |  |
| [t_liuyan](#t_liuyan) |  |
| [t_system_dict](#t_system_dict) | 数据字典表 |
| [t_system_module](#t_system_module) | 系统功能模块 |
| [t_system_role](#t_system_role) |  |
| [t_system_role_module](#t_system_role_module) | 角色模块对应表 |
| [t_system_user](#t_system_user) | 用户表 |
| [t_user](#t_user) | 用户表 |
| [t_yiyuan](#t_yiyuan) |  |

**表名：** <a id="t_football_game">t_football_game</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | game_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | game_team_id_first |   int   | 10 |   0    |    N     |  N   |       |   |
|  3   | game_team_id_second |   int   | 10 |   0    |    N     |  N   |       |   |
|  4   | first_score |   varchar   | 255 |   0    |    N     |  N   |       |   |
|  5   | second_score |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | create_time |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  7   | game_start_date |   datetime   | 19 |   0    |    N     |  N   |       |   |

**表名：** <a id="t_football_league">t_football_league</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | league_id |   int   | 10 |   0    |    N     |  Y   |       | 联赛id  |
|  2   | league_name |   varchar   | 255 |   0    |    N     |  N   |       | 联赛名称  |
|  3   | league_period |   varchar   | 255 |   0    |    N     |  N   |       | 联赛间隔时间  |
|  4   | league_principal |   varchar   | 255 |   0    |    N     |  N   |       | 负责人  |
|  5   | league_info |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | league_status |   varchar   | 10 |   0    |    N     |  N   |   'ready'    | 状态准备中：ready进行中:during结束：over  |
|  7   | create_time |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="t_football_team">t_football_team</a>

**说明：** 球队表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | team_id |   int   | 10 |   0    |    N     |  Y   |       | 球队id  |
|  2   | team_name |   varchar   | 40 |   0    |    N     |  N   |       | 球队名字  |
|  3   | team_info |   varchar   | 255 |   0    |    Y     |  N   |   ''    | 球队介绍  |
|  4   | create_time |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="t_football_team_league">t_football_team_league</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | team_id |   int   | 10 |   0    |    N     |  Y   |       | 球队id  |
|  2   | league_id |   int   | 10 |   0    |    N     |  Y   |       | 联赛id  |
|  3   | score |   int   | 10 |   0    |    N     |  N   |   0    | 分数  |

**表名：** <a id="t_gonggao">t_gonggao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | neirong |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    | 内容  |
|  4   | shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间  |

**表名：** <a id="t_guahao">t_guahao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |   0    |   |
|  2   | muid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | cuid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | riqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 日期  |
|  5   | jibing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  7   | lianxi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | zt |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | huifu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间  |
|  11   | numbb |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_keshi">t_keshi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | keshi_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | keshi_anme |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_lianjie">t_lianjie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | NAME |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | url |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 网络地址  |
|  4   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_liuyan">t_liuyan</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | neirong |   varchar   | 4000 |   0    |    Y     |  N   |   NULL    | 内容  |
|  3   | liuyanshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | uid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  5   | huifu |   varchar   | 4000 |   0    |    Y     |  N   |   NULL    |   |
|  6   | huifushi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_system_dict">t_system_dict</a>

**说明：** 数据字典表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | dict_id |   int   | 10 |   0    |    N     |  Y   |       | 字典id  |
|  2   | dict_type_name |   varchar   | 255 |   0    |    N     |  N   |       | 字典类型名称英文  |
|  3   | dict_value |   varchar   | 255 |   0    |    N     |  N   |       | 字典值  |
|  4   | dict_info |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 字典描述  |

**表名：** <a id="t_system_module">t_system_module</a>

**说明：** 系统功能模块

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | module_id |   int   | 10 |   0    |    N     |  Y   |       | 模块id  |
|  2   | parent_id |   int   | 10 |   0    |    N     |  N   |       | 父级模块Id  |
|  3   | module_name |   varchar   | 255 |   0    |    N     |  N   |       | 模块名称  |
|  4   | module_info |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 模块介绍  |
|  5   | module_url |   varchar   | 255 |   0    |    N     |  N   |   ''    |   |
|  6   | is_enable |   varchar   | 255 |   0    |    N     |  N   |       | Y：是N：否  |
|  7   | is_leaf |   varchar   | 1 |   0    |    N     |  N   |   ''    | 是否叶子模块Y:是，N：否  |

**表名：** <a id="t_system_role">t_system_role</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | role_id |   int   | 10 |   0    |    N     |  Y   |       | 角色Id  |
|  2   | role_name |   varchar   | 255 |   0    |    N     |  N   |       | 角色名称  |
|  3   | role_info |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 角色介绍  |
|  4   | is_enable |   varchar   | 1 |   0    |    N     |  N   |       | Y:可用N：不可用  |
|  5   | create_time |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 创建时间  |

**表名：** <a id="t_system_role_module">t_system_role_module</a>

**说明：** 角色模块对应表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | role_id |   int   | 10 |   0    |    N     |  Y   |       | 角色id  |
|  2   | module_id |   int   | 10 |   0    |    N     |  Y   |       | 模块id  |

**表名：** <a id="t_system_user">t_system_user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | user_id |   int   | 10 |   0    |    N     |  Y   |       | 用户id  |
|  2   | user_name |   varchar   | 255 |   0    |    N     |  N   |       | 用户名  |
|  3   | real_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户真实姓名  |
|  4   | role_id |   int   | 10 |   0    |    N     |  N   |       |   |
|  5   | role_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | password |   varchar   | 255 |   0    |    N     |  N   |       | 用户密码  |
|  7   | contact_tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户电话  |
|  8   | email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户Email  |
|  9   | is_enable |   varchar   | 1 |   0    |    N     |  N   |   ''    | Y：可用，N：不可用  |
|  10   | create_time |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 创建时间  |

**表名：** <a id="t_user">t_user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | loginname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 登录名称  |
|  3   | loginpw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 登录密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | nianling |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | ADDRESS |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  8   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  9   | shenhe |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | TYPE |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类型  |
|  11   | typename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类型名称  |
|  12   | money |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 金额  |
|  13   | jifen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  14   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  15   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  16   | touxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 头像  |
|  17   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  18   | chushengnianyue |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  19   | addtime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 添加时间  |
|  20   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  21   | beizhu2 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  22   | beizhu3 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  23   | beizhu4 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  24   | beizhu5 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  25   | beizhu6 |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_yiyuan">t_yiyuan</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | mingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名称  |
|  3   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  4   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  5   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

