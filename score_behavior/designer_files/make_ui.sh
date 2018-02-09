#!/usr/bin/env bash

source activate opencv_pyqt5

cd ..
pyuic5 -x score_window_ui.ui -o score_window_ui.py
# pyrcc5  resources/icons/play.qrc -o play_rc.py
pyuic5 -x trial_dialog_ui.ui -o trial_dialog_ui.py
pyrcc5 resources/objects/obj.qrc -o obj_rc.py
pyrcc5 video_in_icons.qrc -o video_in_icons_rc.py
pyuic5 video_control_ui.ui -o video_control_ui.py
pyuic5 tracking/tracker_control_ui.ui -o tracking/tracker_control_ui.ui
pyuic5 ObjectSpace/session_manager_control_ui.ui -o ObjectSpace/session_manager_control_ui.py
#sed -i '' "s/play_rc/scorer_gui.play_rc/g" obj_scorer_ui.py
#sed -i '' "s/play_rc/scorer_gui.play_rc/g" trial_dialog_ui.py
sed -i '' "s/obj_rc/score_behavior.obj_rc/g" score_window_ui.py
sed -i '' "s/obj_rc/score_behavior.obj_rc/g" trial_dialog_ui.py
sed -i '' "s/video_in_icons_rc/score_behavior.video_in_icons_rc/g" video_control_ui.py