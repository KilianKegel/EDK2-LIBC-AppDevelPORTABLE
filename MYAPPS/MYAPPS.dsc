[Defines]
  PLATFORM_NAME                  = AppPkg
  PLATFORM_GUID                  = 0458dade-8b6e-4e45-b773-1b27cbda3e06
  PLATFORM_VERSION               = 0.01
  DSC_SPECIFICATION              = 0x00010006
  OUTPUT_DIRECTORY               = Build/AppPkg
  SUPPORTED_ARCHITECTURES        = IA32|X64|ARM|AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE|NOOPT
  SKUID_IDENTIFIER               = DEFAULT

!include EDK2-LIBC/AppPkg/AppPkg.dsc

[LibraryClasses]
    TimerLib|PcAtChipsetPkg\Library\AcpiTimerLib\DxeAcpiTimerLib.inf

[Components]
#
# TODO: add MY APPLICATIONS here
#
    MYAPPS\00_WELCOME\build.inf
