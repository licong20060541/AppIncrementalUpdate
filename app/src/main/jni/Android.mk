LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := exbsdiff

LOCAL_SRC_FILES := $(LOCAL_PATH)/bspatch.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/blocksort.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/bzip2.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/bzip2recover.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/bzlib.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/compress.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/crctable.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/decompress.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/dlltest.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/huffman.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/mk251.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/randtable.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/spewG.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/bzip2/unzcrash.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/bzip2/

LOCAL_LDLIBS := -llog -ljnigraphics -lz
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
LOCAL_LDFLAGS += -fuse-ld=bfd

include $(BUILD_SHARED_LIBRARY)