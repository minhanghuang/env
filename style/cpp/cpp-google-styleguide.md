[TOC]

# Google-Cpp-Styleguide

> https://google-styleguide.readthedocs.io/zh_CN/latest/contents.html

## #1 头文件

### #1.1 #define 保护

> 所有头文件都应该使用 `#define`来防止头文件被多重包含, 命名格式当是: `<PROJECT>_<PATH>_<FILE>_H_`

例如, 项目 `foo` 中的头文件 `foo/src/bar/baz.h` 可按如下方式保护:

```cpp
#ifndef FOO_BAR_BAZ_H_
#define FOO_BAR_BAZ_H_
...
#endif // FOO_BAR_BAZ_H_
```

### #1.2 内联函数

> 只有当函数只有 `10` 行甚至更少时才将其定义为内联函数.


### #1.3 #include 的路径及顺序


- 避免使用 `UNIX` 特殊的快捷目录 `.` (当前目录) 或 `..` (上级目录)
- 头文件顺序(`.clang-format`可以设置)

例如, `dir/foo.cc` 或 `dir/foo_test.cc` 的主要作用是实现或测试 `dir2/foo2.h` 的功能, `foo.cc` 中包含头文件的次序如下:

1. dir2/foo2.h (优先位置, 详情如下)
2. C 系统文件
3. C++ 系统文件
4. 其他库的 .h 文件
5. 本项目内 .h 文件

```cpp
#include "foo/public/fooserver.h" // 优先位置

#include <sys/types.h>
#include <unistd.h>

#include <hash_map>
#include <vector>

#include "base/basictypes.h"
#include "base/commandlineflags.h"
#include "foo/public/bar.h"
```

## #2 作用域

```cpp
namespace trunk {
namespace hdmap {
...
}  // namespace hdmap
}  // namespace trunk 
```

## #3 类 

### #3.1 隐式类型转换

```cpp
class Foo {
  explicit Foo(int x);
  ...
};
```


### #3.2 结构体 VS. 类

> 仅当只有数据成员时使用 `struct`, 其它一概使用 `class`.

### #3.3 声明顺序


> 应以 `public:` 开始, 后跟 `protected:`, 最后是 `private:`

内部顺序:

- 类型(包括 `typedef`, `using` 和嵌套的结构体与类)
- 常量
- 工厂函数
- 构造函数
- 赋值运算符
- 析构函数
- 其它函数
- 数据成员

## #4 其他 

### #4.1 类型转换 

> 使用 C++ 的类型转换, 如 `static_cast<>()`. 不要使用 `int y = (int)x` 或 `int y = int(x)` 等转换方式

- 用 `static_cast` 替代 C 风格的值转换, 或某个类指针需要明确的向上转换为父类指针时
- 用 `const_cast` 去掉 const 限定符
- 用 `reinterpret_cast` 指针类型和整型或其它指针之间进行不安全的相互转换. 仅在你对所做一切了然于心时使用

### #4.2 前置自增和自减

> 前置自增 `(++i)` 通常要比后置自增 `(i++)` 效率更高; foo循环中应使用前置自增/自减(++i/--i)

### #4.3 constexpr 用法

> 在 C++11 里，用 `constexpr` 来定义真正的常量，或实现常量初始化。即在编译时和运行时都不变。


### #4.4 整型

## #5 命名约定

### #5.1 文件命名 

> 文件名要全部小写加下划线 

- my_useful_class.cc


### #5.2 类型命名

> 类型名称的每个单词首字母均大写,不包含下划线

- MyExcitingClass

所有类型命名 —— 类, 结构体, 类型定义 (`typedef`), 枚举, 类型模板参数 —— 均使用相同约定, 即以大写字母开始, 每个单词首字母均大写, 不包含下划线

```cpp
// 类和结构体
class UrlTable { ...
class UrlTableTester { ...
struct UrlTableProperties { ...

// 类型定义
typedef hash_map<UrlTableProperties *, string> PropertiesMap;

// using 别名
using PropertiesMap = hash_map<UrlTableProperties *, string>;

// 枚举
enum UrlTableErrors { ...
```

### #5.3 变量命名

> 变量 (包括函数参数) 和数据成员名一律小写, 单词之间用下划线连接. 类的成员变量以下划线结尾, 但结构体的就不用

- 普通变量命名

```cpp
string table_name;  // 好 - 用下划线.
string tablename;   // 好 - 全小写.
```

- 类数据成员

不管是静态的还是非静态的, 类数据成员都可以和普通变量一样, 但要接下划线.

```cpp
class TableInfo {
  ...
 private:
  string table_name_;  // 好 - 后加下划线.
  string tablename_;   // 好.
  static Pool<TableInfo>* pool_;  // 好.
};
```

- 结构体变量

不管是静态的还是非静态的, 结构体数据成员都可以和普通变量一样, 不用像类那样接下划线:

```cpp
struct UrlTableProperties {
  string name;
  int num_entries;
  static Pool<UrlTableProperties>* pool;
};
```


### #5.4 函数命名

> 常规函数使用大小写混合, 取值和设值函数则要求与变量名匹配

```cpp
MyExcitingFunction()
MyExcitingMethod()
```

```cpp
my_exciting_member_variable()
set_my_exciting_member_variable()
```

### #5.5 枚举命名

> 所有枚举均使用强制类型枚举(加`class`)

```cpp
enum class AlternateUrlTableErrors {
    OK = 0,
    OUT_OF_MEMORY = 1,
    MALFORMED_INPUT = 2,
};
```


## #6 格式

### #6.1 行长度

> 不超过80字符

### #6.2 函数声明与定义

> 返回类型和函数名在同一行, 参数也尽量放在同一行, 如果放不下就对形参分行,每行一个参数 


```cpp
ReturnType ClassName::FunctionName(Type par_name1, Type par_name2) {
  DoSomething();
  ...
}
```


```cpp
ReturnType ClassName::ReallyLongFunctionName(Type par_name1, 
                                             Type par_name2,
                                             Type par_name3) {
  DoSomething();
  ...
}
```

### #6.3 函数调用

> 要么一行写完函数调用, 要么在圆括号里对参数分行,每行一个参数


```cpp
bool retval = DoSomething(argument1, argument2, argument3);
```


```cpp
bool retval = DoSomething(argument1, 
                          argument2,
                          argument3);
```


### #6.4 条件语句

> 倾向于不在圆括号内使用空格. 关键字 if 和 else 另起一行.


```cpp
if (condition) {  // 圆括号里没有空格.
  ...  // 2 空格缩进.
} else if (...) {  // else 与 if 的右括号同一行.
  ...
} else {
  ...
}
```

```cpp
if (this_one_thing > this_other_thing &&
    a_third_thing == a_fourth_thing &&
    yet_another &&
    last_one) {
  ...
}
```

### #6.5  构造函数初始值列表

> 构造函数初始化列表放在同一行或按四格缩进并排多行.

```cpp
// 如果所有变量能放在同一行:
MyClass::MyClass(int var) : some_var_(var) {
  DoSomething();
}

// 如果初始化列表需要置于多行, 将每一个成员放在单独的一行
// 并逐行对齐
MyClass::MyClass(int var)
    : some_var_(var),             // 4 space indent
      some_other_var_(var + 1) {  // lined up
  DoSomething();
}

// 右大括号 } 可以和左大括号 { 放在同一行
// 如果这样做合适的话
MyClass::MyClass(int var)
    : some_var_(var) {}
```