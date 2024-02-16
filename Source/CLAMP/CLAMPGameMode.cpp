// Copyright Epic Games, Inc. All Rights Reserved.

#include "CLAMPGameMode.h"
#include "CLAMPCharacter.h"
#include "UObject/ConstructorHelpers.h"

ACLAMPGameMode::ACLAMPGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawn(TEXT("/Game/CORE/BP_Player"));

	if (PlayerPawn.Class != nullptr)
		DefaultPawnClass = PlayerPawn.Class;
}
