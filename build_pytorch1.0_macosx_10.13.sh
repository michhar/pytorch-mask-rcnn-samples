git clone --recursive https://github.com/pytorch/pytorch.git
pip3 uninstall torch --yes

cd pytorch && \
    git checkout -b 8619230 &&\
    USE_OPENCV=1 \
    CMAKE_PREFIX_PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin/" \
    LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH \
    LD_LIBRARY_PATH=/usr/local/cuda/lib:$LD_LIBRARY_PATH \
    CUDA_BIN_PATH=/usr/local/cuda/bin \
    CUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda/ \
    CUDNN_LIB_DIR=/usr/local/cuda/lib \
    CUDA_HOST_COMPILER=/usr/local/opt/llvm/bin/clang \
    USE_CUDA=0 \
    USE_NNPACK=0 \
    CC=/usr/local/opt/llvm/bin/clang \
    CXX=/usr/local/opt/llvm/bin/clang++ \
#    BUILD_TORCH=ON \
    TORCH_CUDA_ARCH_LIST="3.5 5.2 6.0 6.1+PTX" \
	TORCH_NVCC_FLAGS="-Xfatbin -compress-all" \
	python3 setup.py bdist_wheel

