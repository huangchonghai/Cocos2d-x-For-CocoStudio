TARGET = libextension.a

COCOS_ROOT=../..

INCLUDES = -I$(COCOS_ROOT)/external \
	-I$(COCOS_ROOT)/external/chipmunk/include/chipmunk \
	-I$(COCOS_ROOT)/CocosDenshion/include \
	-I.. \
	-I../CCBReader \
	-I../GUI/CCControlExtension \
	-I../network
	-I../GUI/CCEditBox \
	-I../Components \
	-I../CCArmature \
        -I../JsonReader \
	-I../CocoGUILIB \
    
DEFINES += -DCC_ENABLE_CHIPMUNK_INTEGRATION=1
DEFINES += -D__CC_PLATFORM_IMAGE_CPP__

SOURCES = ../CCBReader/CCBFileLoader.cpp \
../CCBReader/CCMenuItemImageLoader.cpp \
../CCBReader/CCBReader.cpp \
../CCBReader/CCMenuItemLoader.cpp \
../CCBReader/CCControlButtonLoader.cpp \
../CCBReader/CCNodeLoader.cpp \
../CCBReader/CCControlLoader.cpp \
../CCBReader/CCNodeLoaderLibrary.cpp \
../CCBReader/CCLabelBMFontLoader.cpp \
../CCBReader/CCParticleSystemQuadLoader.cpp \
../CCBReader/CCLabelTTFLoader.cpp \
../CCBReader/CCScale9SpriteLoader.cpp \
../CCBReader/CCLayerColorLoader.cpp \
../CCBReader/CCScrollViewLoader.cpp \
../CCBReader/CCLayerGradientLoader.cpp \
../CCBReader/CCSpriteLoader.cpp \
../CCBReader/CCLayerLoader.cpp \
../CCBReader/CCBAnimationManager.cpp \
../CCBReader/CCBKeyframe.cpp \
../CCBReader/CCBSequence.cpp \
../CCBReader/CCBSequenceProperty.cpp \
../CCBReader/CCBValue.cpp \
../CCBReader/CCData.cpp \
../CCBReader/CCNode+CCBRelativePositioning.cpp \
../GUI/CCScrollView/CCScrollView.cpp \
../GUI/CCScrollView/CCSorting.cpp \
../GUI/CCScrollView/CCTableView.cpp \
../GUI/CCScrollView/CCTableViewCell.cpp \
../GUI/CCControlExtension/CCControlButton.cpp \
../GUI/CCControlExtension/CCControlColourPicker.cpp \
../GUI/CCControlExtension/CCControl.cpp \
../GUI/CCControlExtension/CCControlHuePicker.cpp \
../GUI/CCControlExtension/CCControlSaturationBrightnessPicker.cpp \
../GUI/CCControlExtension/CCControlSlider.cpp \
../GUI/CCControlExtension/CCControlSwitch.cpp \
../GUI/CCControlExtension/CCControlUtils.cpp \
../GUI/CCControlExtension/CCInvocation.cpp \
../GUI/CCControlExtension/CCScale9Sprite.cpp \
../GUI/CCControlExtension/CCControlPotentiometer.cpp \
../GUI/CCControlExtension/CCControlStepper.cpp \
../GUI/CCEditBox/CCEditBox.cpp \
../GUI/CCEditBox/CCEditBoxImplNone.cpp \
../physics_nodes/CCPhysicsDebugNode.cpp \
../physics_nodes/CCPhysicsSprite.cpp \
../Components/CCComAttribute.cpp \
../Components/CCComAudio.cpp \
../Components/CCComController.cpp \
../Components/CCInputDelegate.cpp \
../CCArmature/CCArmature.cpp \
../CCArmature/CCBone.cpp \
../CCArmature/animation/CCArmatureAnimation.cpp \
../CCArmature/animation/CCProcessBase.cpp \
../CCArmature/animation/CCTween.cpp \
../CCArmature/datas/CCDatas.cpp \
../CCArmature/display/CCBatchNode.cpp \
../CCArmature/display/CCDecorativeDisplay.cpp \
../CCArmature/display/CCDisplayFactory.cpp \
../CCArmature/display/CCDisplayManager.cpp \
../CCArmature/display/CCShaderNode.cpp \
../CCArmature/display/CCSkin.cpp \
../CCArmature/external_tool/GLES-Render.cpp \
../CCArmature/external_tool/Json/CSContentJsonDictionary.cpp \
../CCArmature/external_tool/Json/lib_json/json_value.cpp \
../CCArmature/external_tool/Json/lib_json/json_reader.cpp \
../CCArmature/external_tool/Json/lib_json/json_writer.cpp \
../CCArmature/physics/CCColliderDetector.cpp \
../CCArmature/physics/CCPhysicsWorld.cpp \
../CCArmature/utils/CCArmatureDataManager.cpp \
../CCArmature/utils/CCDataReaderHelper.cpp \
../CCArmature/utils/CCSpriteFrameCacheHelper.cpp \
../CCArmature/utils/CCTransformHelp.cpp \
../CCArmature/utils/CCTweenFunction.cpp \
../CCArmature/utils/CCUtilMath.cpp \
../CocoGUILIB/Action/UIAction.cpp \
../CocoGUILIB/Action/UIActionFrame.cpp \
../CocoGUILIB/Action/UIActionManager.cpp \
../CocoGUILIB/Action/UIActionNode.cpp \
../CocoGUILIB/BaseClasses/UIContainerWidget.cpp \
../CocoGUILIB/BaseClasses/UIRootWidget.cpp \
../CocoGUILIB/BaseClasses/UIWidget.cpp \
../CocoGUILIB/Drawable/UICCLabelAtlas.cpp \
../CocoGUILIB/Drawable/UIClippingLayer.cpp \
../CocoGUILIB/System/CCSReader.cpp \
../CocoGUILIB/System/CocosGUI.cpp \
../CocoGUILIB/System/UIHelper.cpp \
../CocoGUILIB/System/UIInputManager.cpp \
../CocoGUILIB/System/UILayer.cpp \
../CocoGUILIB/UIWidgets/UIButton.cpp \
../CocoGUILIB/UIWidgets/UICheckBox.cpp \
../CocoGUILIB/UIWidgets/UIControlButton.cpp \
../CocoGUILIB/UIWidgets/UIImageView.cpp \
../CocoGUILIB/UIWidgets/UILabel.cpp \
../CocoGUILIB/UIWidgets/UILabelAtlas.cpp \
../CocoGUILIB/UIWidgets/UILabelBMFont.cpp \
../CocoGUILIB/UIWidgets/UIListView.cpp \
../CocoGUILIB/UIWidgets/UILoadingBar.cpp \
../CocoGUILIB/UIWidgets/UINodeContainer.cpp \
../CocoGUILIB/UIWidgets/UIPageView.cpp \
../CocoGUILIB/UIWidgets/UIPanel.cpp \
../CocoGUILIB/UIWidgets/UIScrollView.cpp \
../CocoGUILIB/UIWidgets/UISlider.cpp \
../CocoGUILIB/UIWidgets/UITextArea.cpp \
../CocoGUILIB/UIWidgets/UITextButton.cpp \
../CocoGUILIB/UIWidgets/UITextField.cpp \
../CocostudioReader/CCJsonReader.cpp \
../CocostudioReader/DictionaryHelper.cpp 

include $(COCOS_ROOT)/cocos2dx/proj.emscripten/cocos2dx.mk

CXXFLAGS += -Wno-multichar

TARGET := $(LIB_DIR)/$(TARGET)

all: $(TARGET)

$(TARGET): $(OBJECTS) $(CORE_MAKEFILE_LIST)
	@mkdir -p $(@D)
	$(AR) $(ARFLAGS) $@ $(OBJECTS)

$(OBJ_DIR)/%.o: ../%.cpp $(CORE_MAKEFILE_LIST)
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(DEFINES) -c $< -o $@

$(OBJ_DIR)/%.o: ../%.c $(CORE_MAKEFILE_LIST)
	@mkdir -p $(@D)
	$(CC) $(CCFLAGS) $(INCLUDES) $(DEFINES) -c $< -o $@
