#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dev/catkin_ws/src/catkin"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/usr/local/lib/python2.7/site-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/usr/local/lib/python2.7/site-packages:/home/dev/catkin_ws/src/powerlink_test/include/lib/python2.7/site-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dev/catkin_ws/src/powerlink_test/include" \
    "/bin/python" \
    "/home/dev/catkin_ws/src/catkin/setup.py" \
    build --build-base "/home/dev/catkin_ws/src/powerlink_test/include/catkin" \
    install \
    $DESTDIR_ARG \
     --prefix="/usr/local" --install-scripts="/usr/local/bin"
