// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"

#define PRINT_SCREEN(duration, color, format, ...) if (GEngine) GEngine->AddOnScreenDebugMessage(-1, duration, color, FString::Printf(TEXT(format), ##__VA_ARGS__));

#define LOG_TRACE(format, ...) PRINT_SCREEN(5.0f, FColor::White, format, ##__VA_ARGS__)
#define LOG_INFO(format, ...) PRINT_SCREEN(5.0f, FColor::Green, format, ##__VA_ARGS__)
#define LOG_WARN(format, ...) PRINT_SCREEN(5.0f, FColor::Yellow, format, ##__VA_ARGS__)
#define LOG_ERROR(format, ...) PRINT_SCREEN(5.0f, FColor::Red, format, ##__VA_ARGS__)