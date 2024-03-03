# EDK2-LIBC-AppDevel
EDK2-LIBC-AppDevelopment

## Intention
***Tianocore community*** doesn't provide an easy to use **EDK2-LIBC** build environment.

**AppPkg** and **StdLib** was suddenly removed from the **EDK2** source code tree, [without any comment](https://github.com/tianocore/edk2/releases/tag/edk2-stable201905).

The latest available **EDK2-Release** that offers the required packages is 
[**edk2-stable201903**](https://github.com/tianocore/edk2/releases/tag/edk2-stable201903)

## Goal
Provide an easy *getting started* with latest available ***Tianocore community*** 
[**EDK2**](https://github.com/tianocore/edk2/releases?page=1) and **EDK2-LIBC**.

Enable devolpers to validate the **EDK2-LIBC** implementation on their own

Enable devolpers to write their own **EDK2-LIBC** based UEFI Shell apps in C.

## Approach
Provide **EDK2-LIBC** / **AppPkg** / **StdLib** build process with the complete set of all 
required build tools for Windows 10/11 machines running the AMD64 instruction set:

* **Microsoft EWDK 1703** [EnterpriseWDK_rs2_release_15063_20170317-1834.zip](https://go.microsoft.com/fwlink/p/?LinkID=846038)
* **Python 3.10.11** [python-3.10.11-embed-amd64.zip](https://www.python.org/ftp/python/3.10.11/python-3.10.11-embed-amd64.zip)
* **NASM 2.16.01** [nasm-2.16.01-win64.zip](https://www.nasm.us/pub/nasm/releasebuilds/2.16.01/win64/nasm-2.16.01-win64.zip)

*The above tool set is automatically downloaded, extracted and set up during **LAUNCH.BAT** project start.*

To speed up repeated installations (avoid repeated downloads of huge tool images),
the images may be –initially– stored permanently in local folder/share, beyond an environment variable
**MYDOWNLOADS**.

To do so follow [Preparation for upcoming portable projects](https://github.com/KilianKegel/Howto-setup-a-UEFI-Development-PC?tab=readme-ov-file#preparation-for-upcoming-portable-projects)

### Using the Enterprise WDK
https://learn.microsoft.com/en-us/windows-hardware/drivers/develop/using-the-enterprise-wdk

The Enterprise Windows Driver Kit (Enterprise WDK) is a command-line build environment that does not require any installation prior to use. Once you have downloaded the EWDK, you can manage it with version control software or you can zip the files and copy as needed. A .zip file created with the Enterprise WDK contains all the necessary compilers, linkers, build tools, headers and libs to build Visual Studio-based driver projects.

The Enterprise WDK contains the necessary elements to build drivers and basic Win32 driver test applications. Use your favorite code editor to modify source code and project files. Because it is command-line based, the Enterprise WDK does lack some of the features incorporated into Visual Studio, such as an IDE, driver deployment and driver testing.

## Howto
0. download project recursively
1. run `LAUNCH.BAT` to start the session
2. run `BUILD` (build.cmd), to run the traditional EDK2 build


## Revision history
### 20240225
* improve portability, auto-download and setup of all required build tools
### 20240224
* creation, initial version based on
	* [edk2-stable202402](https://github.com/tianocore/edk2/releases/tag/edk2-stable202402)
