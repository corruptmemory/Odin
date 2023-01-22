all: default

demo:
	./odin run examples/demo/demo.odin -file

report:
	./odin report

default:
	PROGRAM=make ./build_odin.sh # debug

debug:
	LLVM_CONFIG=llvm-config-14 ./build_odin.sh debug

release:
	LLVM_CONFIG=llvm-config-14 ./build_odin.sh release

release-native:
	./build_odin.sh release-native

release_native:
	LLVM_CONFIG=llvm-config-14 ./build_odin.sh release-native

nightly:
	LLVM_CONFIG=llvm-config-14 ./build_odin.sh nightly
