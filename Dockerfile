FROM diuis/docker-emsdk-opencv3-wasm_eigen:18.10-python2

USER appuser
ADD ./build_opencv_emscripten.py /home/appuser/
ADD ./build.sh /home/appuser/
SHELL ["/bin/bash", "-c"]
RUN source /home/appuser/emsdk/emsdk_env.sh
RUN mkdir /home/appuser/vto_wasm_headtracker
# RUN mkdir /home/appuser/opencv/build_emscripten && \
#    mkdir /home/appuser/opencv_wasm_lux
# RUN python /home/appuser/build_opencv_emscripten.py --opencv_dir /home/appuser/opencv --install_dir /home/appuser/opencv_wasm_lux --emscripten_dir /home/appuser/emsdk/emscripten/1.38.31 /home/appuser/opencv/build_emscripten
