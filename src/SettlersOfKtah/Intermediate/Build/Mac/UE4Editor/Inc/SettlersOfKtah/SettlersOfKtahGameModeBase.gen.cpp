// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "SettlersOfKtah/SettlersOfKtahGameModeBase.h"
#ifdef _MSC_VER
#pragma warning (push)
#pragma warning (disable : 4883)
#endif
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeSettlersOfKtahGameModeBase() {}
// Cross Module References
	SETTLERSOFKTAH_API UClass* Z_Construct_UClass_ASettlersOfKtahGameModeBase_NoRegister();
	SETTLERSOFKTAH_API UClass* Z_Construct_UClass_ASettlersOfKtahGameModeBase();
	ENGINE_API UClass* Z_Construct_UClass_AGameModeBase();
	UPackage* Z_Construct_UPackage__Script_SettlersOfKtah();
// End Cross Module References
	void ASettlersOfKtahGameModeBase::StaticRegisterNativesASettlersOfKtahGameModeBase()
	{
	}
	UClass* Z_Construct_UClass_ASettlersOfKtahGameModeBase_NoRegister()
	{
		return ASettlersOfKtahGameModeBase::StaticClass();
	}
	struct Z_Construct_UClass_ASettlersOfKtahGameModeBase_Statics
	{
		static UObject* (*const DependentSingletons[])();
#if WITH_METADATA
		static const UE4CodeGen_Private::FMetaDataPairParam Class_MetaDataParams[];
#endif
		static const FCppClassTypeInfoStatic StaticCppClassTypeInfo;
		static const UE4CodeGen_Private::FClassParams ClassParams;
	};
	UObject* (*const Z_Construct_UClass_ASettlersOfKtahGameModeBase_Statics::DependentSingletons[])() = {
		(UObject* (*)())Z_Construct_UClass_AGameModeBase,
		(UObject* (*)())Z_Construct_UPackage__Script_SettlersOfKtah,
	};
#if WITH_METADATA
	const UE4CodeGen_Private::FMetaDataPairParam Z_Construct_UClass_ASettlersOfKtahGameModeBase_Statics::Class_MetaDataParams[] = {
		{ "Comment", "/**\n * \n */" },
		{ "HideCategories", "Info Rendering MovementReplication Replication Actor Input Movement Collision Rendering Utilities|Transformation" },
		{ "IncludePath", "SettlersOfKtahGameModeBase.h" },
		{ "ModuleRelativePath", "SettlersOfKtahGameModeBase.h" },
		{ "ShowCategories", "Input|MouseInput Input|TouchInput" },
	};
#endif
	const FCppClassTypeInfoStatic Z_Construct_UClass_ASettlersOfKtahGameModeBase_Statics::StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ASettlersOfKtahGameModeBase>::IsAbstract,
	};
	const UE4CodeGen_Private::FClassParams Z_Construct_UClass_ASettlersOfKtahGameModeBase_Statics::ClassParams = {
		&ASettlersOfKtahGameModeBase::StaticClass,
		"Game",
		&StaticCppClassTypeInfo,
		DependentSingletons,
		nullptr,
		nullptr,
		nullptr,
		UE_ARRAY_COUNT(DependentSingletons),
		0,
		0,
		0,
		0x009002ACu,
		METADATA_PARAMS(Z_Construct_UClass_ASettlersOfKtahGameModeBase_Statics::Class_MetaDataParams, UE_ARRAY_COUNT(Z_Construct_UClass_ASettlersOfKtahGameModeBase_Statics::Class_MetaDataParams))
	};
	UClass* Z_Construct_UClass_ASettlersOfKtahGameModeBase()
	{
		static UClass* OuterClass = nullptr;
		if (!OuterClass)
		{
			UE4CodeGen_Private::ConstructUClass(OuterClass, Z_Construct_UClass_ASettlersOfKtahGameModeBase_Statics::ClassParams);
		}
		return OuterClass;
	}
	IMPLEMENT_CLASS(ASettlersOfKtahGameModeBase, 3715631499);
	template<> SETTLERSOFKTAH_API UClass* StaticClass<ASettlersOfKtahGameModeBase>()
	{
		return ASettlersOfKtahGameModeBase::StaticClass();
	}
	static FCompiledInDefer Z_CompiledInDefer_UClass_ASettlersOfKtahGameModeBase(Z_Construct_UClass_ASettlersOfKtahGameModeBase, &ASettlersOfKtahGameModeBase::StaticClass, TEXT("/Script/SettlersOfKtah"), TEXT("ASettlersOfKtahGameModeBase"), false, nullptr, nullptr, nullptr);
	DEFINE_VTABLE_PTR_HELPER_CTOR(ASettlersOfKtahGameModeBase);
PRAGMA_ENABLE_DEPRECATION_WARNINGS
#ifdef _MSC_VER
#pragma warning (pop)
#endif
