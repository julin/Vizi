BUILDDIR=../build
TARGET="$BUILDDIR/vizi-nodeps.js"
OUTPUT="$BUILDDIR/vizi.js"
THREE=../libs/three.js.r58/three.js
STATS=../libs/three.js.r58/stats.min.js
LOADERS=../libs/three.js.r58/ColladaLoader.js
RAF=../libs/requestAnimationFrame/RequestAnimationFrame.js
MOUSEWHEEL=../libs/jquery-mousewheel-3.0.4/jquery.mousewheel.js
TWEEN=../libs/tween.js/tween.min.js
LIBS="$THREE $STATS $LOADERS $TWEEN $RAF $MOUSEWHEEL"
NODEPS=../src/config/nodeps.js

$CLOSURE_PATH/closure/bin/build/closurebuilder.py --root=$CLOSURE_PATH  --root=../src/animations --root=../src/behaviors --root=../src/cameras --root=../src/controllers --root=../src/config --root=../src/core  --root=../src/events --root=../src/graphics --root=../src/input --root=../src/lights  --root=../src/loaders  --root=../src/prefabs --root=../src/scene --root=../src/scripts --root=../src/system --root=../src/time --namespace="Vizi.Object" --namespace="Vizi.Modules" --output_mode=script --compiler_jar=compiler.jar --output_file=$TARGET
cat $LIBS $NODEPS $TARGET > $OUTPUT
