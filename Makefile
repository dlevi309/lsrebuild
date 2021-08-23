export ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TOOL_NAME = lsrebuild

lsrebuild_FILES = lsrebuild.m
lsrebuild_CFLAGS = -fno-objc-arc
lsrebuild_FRAMEWORKS = MobileCoreServices
lsrebuild_PRIVATE_FRAMEWORKS = SpringBoardServices
lsrebuild_CODESIGN_FLAGS = -Sent.xml
lsrebuild_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
