#pragma once

#if defined(_MSC_VER)
//  Microsoft
#ifdef HZ_BUILD_DLL
#define EXPORT __declspec(dllexport)
#else
#define IMPORT __declspec(dllimport)
#endif // DEBUG

#elif defined(__GNUC__)
//  GCC
#define EXPORT __attribute__((visibility("default")))
#define IMPORT
#else
//  do nothing and hope for the best?
#define EXPORT
#define IMPORT
#pragma warning Unknown dynamic link import / export semantics.
#endif
