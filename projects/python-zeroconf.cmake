# Using Zeroconf installed via pip on Windows
# Eg. "pip3 install zeroconf"
# Other OSs will build it manually...
if(NOT BUILD_OS_WINDOWS)
    ExternalProject_Add(Python    
        URL https://github.com/jstasiak/python-zeroconf/archive/0.17.6.tar.gz
        CONFIGURE_COMMAND ""
        BUILD_COMMAND ${PYTHON_EXECUTABLE} setup.py build
        INSTALL_COMMAND ${PYTHON_EXECUTABLE} setup.py install --single-version-externally-managed --record=zeroconf-install.log
        BUILD_IN_SOURCE 1
    )
    SetProjectDependencies(TARGET PythonZeroconf DEPENDS PythonNetifaces PythonSix)
endif()