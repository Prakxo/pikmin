# Linker order for every file, passed to the Metrowerks linker.

GROUP_0_FILES :=\
	$(BUILD_DIR)/asm/bss.o\

SYSBOOTUP :=\
	$(BUILD_DIR)/src/sysBootup.o\

JAUDIO :=\
	$(BUILD_DIR)/src/jaudio/dummyprobe.o\
	$(BUILD_DIR)/asm/jaudio/memory.o\
	$(BUILD_DIR)/asm/jaudio/aictrl.o\
	$(BUILD_DIR)/asm/jaudio/sample.o\
	$(BUILD_DIR)/asm/jaudio/dummyrom.o\
	$(BUILD_DIR)/asm/jaudio/audiothread.o\
	$(BUILD_DIR)/asm/jaudio/streamctrl.o\
	$(BUILD_DIR)/asm/jaudio/dspbuf.o\
	$(BUILD_DIR)/asm/jaudio/cpubuf.o\
	$(BUILD_DIR)/asm/jaudio/playercall.o\
	$(BUILD_DIR)/asm/jaudio/dvdthread.o\
	$(BUILD_DIR)/asm/jaudio/audiomesg.o\
	$(BUILD_DIR)/asm/jaudio/rate.o\
	$(BUILD_DIR)/asm/jaudio/stackchecker.o\
	$(BUILD_DIR)/asm/jaudio/dspboot.o\
	$(BUILD_DIR)/asm/jaudio/dspproc.o\
	$(BUILD_DIR)/asm/jaudio/ipldec.o\
	$(BUILD_DIR)/asm/jaudio/dsp_cardunlock.o\
	$(BUILD_DIR)/asm/jaudio/driverinterface.o\
	$(BUILD_DIR)/asm/jaudio/dspdriver.o\
	$(BUILD_DIR)/asm/jaudio/dspinterface.o\
	$(BUILD_DIR)/asm/jaudio/fxinterface.o\
	$(BUILD_DIR)/asm/jaudio/bankread.o\
	$(BUILD_DIR)/asm/jaudio/waveread.o\
	$(BUILD_DIR)/asm/jaudio/connect.o\
	$(BUILD_DIR)/asm/jaudio/tables.o\
	$(BUILD_DIR)/asm/jaudio/bankdrv.o\
	$(BUILD_DIR)/asm/jaudio/random.o\
	$(BUILD_DIR)/asm/jaudio/aramcall.o\
	$(BUILD_DIR)/asm/jaudio/ja_calc.o\
	$(BUILD_DIR)/asm/jaudio/fat.o\
	$(BUILD_DIR)/asm/jaudio/cmdstack.o\
	$(BUILD_DIR)/asm/jaudio/virload.o\
	$(BUILD_DIR)/asm/jaudio/heapctrl.o\
	$(BUILD_DIR)/asm/jaudio/jammain_2.o\
	$(BUILD_DIR)/asm/jaudio/midplay.o\
	$(BUILD_DIR)/asm/jaudio/noteon.o\
	$(BUILD_DIR)/asm/jaudio/seqsetup.o\
	$(BUILD_DIR)/asm/jaudio/centcalc.o\
	$(BUILD_DIR)/asm/jaudio/jamosc.o\
	$(BUILD_DIR)/asm/jaudio/oneshot.o\
	$(BUILD_DIR)/asm/jaudio/interface.o\
	$(BUILD_DIR)/asm/jaudio/verysimple.o\
	$(BUILD_DIR)/asm/jaudio/app_inter.o\
	$(BUILD_DIR)/asm/jaudio/pikiinter.o\
	$(BUILD_DIR)/asm/jaudio/piki_player.o\
	$(BUILD_DIR)/asm/jaudio/piki_bgm.o\
	$(BUILD_DIR)/asm/jaudio/piki_scene.o\
	$(BUILD_DIR)/asm/jaudio/pikidemo.o\
	$(BUILD_DIR)/asm/jaudio/file_seq.o\
	$(BUILD_DIR)/asm/jaudio/cmdqueue.o\
	$(BUILD_DIR)/src/jaudio/filter3d.o\
	$(BUILD_DIR)/asm/jaudio/syncstream.o\
	$(BUILD_DIR)/asm/jaudio/bankloader.o\
	$(BUILD_DIR)/asm/jaudio/interleave.o\
	$(BUILD_DIR)/asm/jaudio/pikiseq.o\
	$(BUILD_DIR)/asm/jaudio/hvqm_play.o\

HVQM4DEC :=\
	$(BUILD_DIR)/asm/hvqm4dec/hvqm4dec.o\

SYSCOMMON :=\
	$(BUILD_DIR)/asm/sysCommon/ayuStack.o\
	$(BUILD_DIR)/asm/sysCommon/baseApp.o\
	$(BUILD_DIR)/asm/sysCommon/stream.o\
	$(BUILD_DIR)/asm/sysCommon/streamBufferedInput.o\
	$(BUILD_DIR)/src/sysCommon/string.o\
	$(BUILD_DIR)/asm/sysCommon/graphics.o\
	$(BUILD_DIR)/asm/sysCommon/grLight.o\
	$(BUILD_DIR)/asm/sysCommon/shapeBase.o\
	$(BUILD_DIR)/asm/sysCommon/shpLightFlares.o\
	$(BUILD_DIR)/asm/sysCommon/shpObjColl.o\
	$(BUILD_DIR)/asm/sysCommon/shpRoutes.o\
	$(BUILD_DIR)/asm/sysCommon/sysMath.o\
	$(BUILD_DIR)/src/sysCommon/matMath.o\
	$(BUILD_DIR)/asm/sysCommon/matMath_asm.o\
	$(BUILD_DIR)/asm/sysCommon/stdSystem.o\
	$(BUILD_DIR)/asm/sysCommon/node.o\
	$(BUILD_DIR)/src/sysCommon/timers.o\
	$(BUILD_DIR)/asm/sysCommon/controller.o\
	$(BUILD_DIR)/asm/sysCommon/cmdStream.o\
	$(BUILD_DIR)/asm/sysCommon/camera.o\
	$(BUILD_DIR)/asm/sysCommon/atx.o\
	$(BUILD_DIR)/asm/sysCommon/id32.o\

SYSDOLPHIN :=\
	$(BUILD_DIR)/asm/sysDolphin/texture.o\
	$(BUILD_DIR)/src/sysDolphin/system.o\
	$(BUILD_DIR)/asm/sysDolphin/system_asm.o\
	$(BUILD_DIR)/asm/sysDolphin/sysNew.o\
	$(BUILD_DIR)/asm/sysDolphin/controllerMgr.o\
	$(BUILD_DIR)/asm/sysDolphin/dgxGraphics.o\
	$(BUILD_DIR)/src/sysDolphin/gameApp.o\

COLIN :=\
	$(BUILD_DIR)/asm/plugPikiColin/cardutil.o\
	$(BUILD_DIR)/asm/plugPikiColin/dynsimulator.o\
	$(BUILD_DIR)/asm/plugPikiColin/animMgr.o\
	$(BUILD_DIR)/asm/plugPikiColin/gameflow.o\
	$(BUILD_DIR)/asm/plugPikiColin/game.o\
	$(BUILD_DIR)/asm/plugPikiColin/gamePrefs.o\
	$(BUILD_DIR)/asm/plugPikiColin/gameSetup.o\
	$(BUILD_DIR)/asm/plugPikiColin/cardSelect.o\
	$(BUILD_DIR)/asm/plugPikiColin/mapSelect.o\
	$(BUILD_DIR)/asm/plugPikiColin/newPikiGame.o\
	$(BUILD_DIR)/asm/plugPikiColin/introGame.o\
	$(BUILD_DIR)/asm/plugPikiColin/gameExit.o\
	$(BUILD_DIR)/asm/plugPikiColin/gauges.o\
	$(BUILD_DIR)/asm/plugPikiColin/genMapObject.o\
	$(BUILD_DIR)/asm/plugPikiColin/gui.o\
	$(BUILD_DIR)/asm/plugPikiColin/parameters.o\
	$(BUILD_DIR)/asm/plugPikiColin/plugPiki.o\
	$(BUILD_DIR)/asm/plugPikiColin/titles.o\
	$(BUILD_DIR)/asm/plugPikiColin/ninLogo.o\
	$(BUILD_DIR)/asm/plugPikiColin/mapMgr.o\
	$(BUILD_DIR)/asm/plugPikiColin/dayMgr.o\
	$(BUILD_DIR)/asm/plugPikiColin/cinePlayer.o\
	$(BUILD_DIR)/asm/plugPikiColin/lightPool.o\
	$(BUILD_DIR)/asm/plugPikiColin/memoryCard.o\
	$(BUILD_DIR)/asm/plugPikiColin/moviePlayer.o\
	$(BUILD_DIR)/asm/plugPikiColin/movSample.o\

KANDO :=\
	$(BUILD_DIR)/asm/plugPikiKando/omake.o\
	$(BUILD_DIR)/asm/plugPikiKando/radarInfo.o\
	$(BUILD_DIR)/asm/plugPikiKando/interactBattle.o\
	$(BUILD_DIR)/asm/plugPikiKando/interactGrab.o\
	$(BUILD_DIR)/asm/plugPikiKando/interactEtc.o\
	$(BUILD_DIR)/asm/plugPikiKando/interactPullout.o\
	$(BUILD_DIR)/asm/plugPikiKando/saiEvents.o\
	$(BUILD_DIR)/asm/plugPikiKando/simpleAI.o\
	$(BUILD_DIR)/asm/plugPikiKando/formationMgr.o\
	$(BUILD_DIR)/src/plugPikiKando/globalShapes.o\
	$(BUILD_DIR)/asm/plugPikiKando/playerState.o\
	$(BUILD_DIR)/asm/plugPikiKando/gameDemo.o\
	$(BUILD_DIR)/asm/plugPikiKando/demoInvoker.o\
	$(BUILD_DIR)/asm/plugPikiKando/demoEvent.o\
	$(BUILD_DIR)/asm/plugPikiKando/resultFlag.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiConstants.o\
	$(BUILD_DIR)/asm/plugPikiKando/kio.o\
	$(BUILD_DIR)/asm/plugPikiKando/keyConfig.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiPerf.o\
	$(BUILD_DIR)/asm/plugPikiKando/courseDebug.o\
	$(BUILD_DIR)/asm/plugPikiKando/memStat.o\
	$(BUILD_DIR)/asm/plugPikiKando/collInfo.o\
	$(BUILD_DIR)/asm/plugPikiKando/complexCreature.o\
	$(BUILD_DIR)/asm/plugPikiKando/creature.o\
	$(BUILD_DIR)/asm/plugPikiKando/creatureCollision.o\
	$(BUILD_DIR)/asm/plugPikiKando/creatureCollPart.o\
	$(BUILD_DIR)/asm/plugPikiKando/creatureMove.o\
	$(BUILD_DIR)/asm/plugPikiKando/creatureStick.o\
	$(BUILD_DIR)/asm/plugPikiKando/dualCreature.o\
	$(BUILD_DIR)/asm/plugPikiKando/dynCreature.o\
	$(BUILD_DIR)/asm/plugPikiKando/eventListener.o\
	$(BUILD_DIR)/asm/plugPikiKando/fastGrid.o\
	$(BUILD_DIR)/asm/plugPikiKando/ropeCreature.o\
	$(BUILD_DIR)/src/plugPikiKando/objectTypes.o\
	$(BUILD_DIR)/asm/plugPikiKando/pelletMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/animPellet.o\
	$(BUILD_DIR)/asm/plugPikiKando/genPellet.o\
	$(BUILD_DIR)/asm/plugPikiKando/pelletState.o\
	$(BUILD_DIR)/asm/plugPikiKando/workObject.o\
	$(BUILD_DIR)/asm/plugPikiKando/routeMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/seMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/seConstants.o\
	$(BUILD_DIR)/asm/plugPikiKando/soundMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/updateMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/cPlate.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiStone.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiActions.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiAttack.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiBore.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiBoMake.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiBou.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiBridge.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiBreakWall.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiTransport.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiKinoko.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiChase.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiCrowd.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiDecoy.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiEnter.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiEscape.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiExit.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiMine.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiFormation.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiFree.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiGoto.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiGuard.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiPick.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiPickCreature.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiPullout.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiPush.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiPut.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiRandomBoid.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiRescue.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiRope.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiShoot.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiWatch.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiWeed.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiTable.o\
	$(BUILD_DIR)/asm/plugPikiKando/aiAction.o\
	$(BUILD_DIR)/asm/plugPikiKando/pikiInf.o\
	$(BUILD_DIR)/asm/plugPikiKando/piki.o\
	$(BUILD_DIR)/src/plugPikiKando/odoMeter.o\
	$(BUILD_DIR)/asm/plugPikiKando/pikidoKill.o\
	$(BUILD_DIR)/asm/plugPikiKando/pikiMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/pikiState.o\
	$(BUILD_DIR)/asm/plugPikiKando/viewPiki.o\
	$(BUILD_DIR)/asm/plugPikiKando/conditions.o\
	$(BUILD_DIR)/asm/plugPikiKando/generator.o\
	$(BUILD_DIR)/asm/plugPikiKando/generatorCache.o\
	$(BUILD_DIR)/asm/plugPikiKando/objectMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/searchSystem.o\
	$(BUILD_DIR)/asm/plugPikiKando/smartPtr.o\
	$(BUILD_DIR)/asm/plugPikiKando/itemGem.o\
	$(BUILD_DIR)/asm/plugPikiKando/weedsItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/kusaItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/fishItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/ufoItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/ufoAnim.o\
	$(BUILD_DIR)/asm/plugPikiKando/bombItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/goalItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/pikiheadItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/keyItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/ropeItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/seedItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/genItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/itemAI.o\
	$(BUILD_DIR)/asm/plugPikiKando/itemMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/itemObject.o\
	$(BUILD_DIR)/asm/plugPikiKando/mizuItem.o\
	$(BUILD_DIR)/asm/plugPikiKando/paniItemAnimator.o\
	$(BUILD_DIR)/asm/plugPikiKando/genNavi.o\
	$(BUILD_DIR)/asm/plugPikiKando/navi.o\
	$(BUILD_DIR)/asm/plugPikiKando/naviState.o\
	$(BUILD_DIR)/asm/plugPikiKando/naviDemoState.o\
	$(BUILD_DIR)/asm/plugPikiKando/gameCoreSection.o\
	$(BUILD_DIR)/asm/plugPikiKando/gmWin.o\
	$(BUILD_DIR)/asm/plugPikiKando/gameStat.o\
	$(BUILD_DIR)/asm/plugPikiKando/kmath.o\
	$(BUILD_DIR)/asm/plugPikiKando/uteffect.o\
	$(BUILD_DIR)/asm/plugPikiKando/kontroller.o\
	$(BUILD_DIR)/src/plugPikiKando/mapcode.o\
	$(BUILD_DIR)/asm/plugPikiKando/utkando.o\
	$(BUILD_DIR)/asm/plugPikiKando/naviMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/genMapParts.o\
	$(BUILD_DIR)/asm/plugPikiKando/mapParts.o\
	$(BUILD_DIR)/asm/plugPikiKando/panipikianimator.o\
	$(BUILD_DIR)/asm/plugPikiKando/actor.o\
	$(BUILD_DIR)/asm/plugPikiKando/actorMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/genActor.o\
	$(BUILD_DIR)/src/plugPikiKando/pikiInfo.o\
	$(BUILD_DIR)/asm/plugPikiKando/plantMgr.o\
	$(BUILD_DIR)/asm/plugPikiKando/paniPlantAnimator.o\

NAKATA :=\
	$(BUILD_DIR)/asm/plugPikiNakata/genteki.o\
	$(BUILD_DIR)/asm/plugPikiNakata/nakatacode.o\
	$(BUILD_DIR)/asm/plugPikiNakata/nlibfunction.o\
	$(BUILD_DIR)/asm/plugPikiNakata/nlibgeometry.o\
	$(BUILD_DIR)/asm/plugPikiNakata/nlibgeometry3d.o\
	$(BUILD_DIR)/asm/plugPikiNakata/nlibgraphics.o\
	$(BUILD_DIR)/asm/plugPikiNakata/nlibmath.o\
	$(BUILD_DIR)/asm/plugPikiNakata/nlibspline.o\
	$(BUILD_DIR)/asm/plugPikiNakata/nlibsystem.o\
	$(BUILD_DIR)/asm/plugPikiNakata/panianimator.o\
	$(BUILD_DIR)/asm/plugPikiNakata/panipikianimmgr.o\
	$(BUILD_DIR)/asm/plugPikiNakata/panitekianimator.o\
	$(BUILD_DIR)/asm/plugPikiNakata/panitestsection.o\
	$(BUILD_DIR)/asm/plugPikiNakata/paraparameters.o\
	$(BUILD_DIR)/asm/plugPikiNakata/pcamcamera.o\
	$(BUILD_DIR)/asm/plugPikiNakata/pcamcameramanager.o\
	$(BUILD_DIR)/asm/plugPikiNakata/pcammotionevents.o\
	$(BUILD_DIR)/asm/plugPikiNakata/pcamcameraparameters.o\
	$(BUILD_DIR)/asm/plugPikiNakata/peve.o\
	$(BUILD_DIR)/asm/plugPikiNakata/peveconditions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/pevemotionevents.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tai.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taiattackactions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taibasicactions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taichappy.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taicollec.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taicollisionactions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taieffectactions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taiiwagen.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taijudgementactions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taikinoko.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taimessageactions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taimizinko.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taimotionactions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taimoveactions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tainapkid.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taiotimoti.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taipalm.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taireactionactions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taiswallow.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taishell.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taitimeractions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/taiwaitactions.o\
	$(BUILD_DIR)/asm/plugPikiNakata/teki.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tekianimationmanager.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tekibteki.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tekiconditions.o\
	$(BUILD_DIR)/src/plugPikiNakata/tekievent.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tekiinteraction.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tekimgr.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tekinakata.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tekinteki.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tekiparameters.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tekipersonality.o\
	$(BUILD_DIR)/asm/plugPikiNakata/tekistrategy.o\

NISHIMURA :=\
	$(BUILD_DIR)/asm/plugPikiNishimura/genBoss.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/Boss.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/BossAnimMgr.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/BossCnd.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/BossMgr.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/BossShapeObj.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/Spider.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/SpiderAi.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/SpiderLeg.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/Snake.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/SnakeAi.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/SnakeBody.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/Slime.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/SlimeAi.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/SlimeBody.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/SlimeCreature.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/King.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/KingAi.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/KingBody.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/Kogane.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/KoganeAi.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/Pom.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/PomAi.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/KingBack.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/Nucleus.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/NucleusAi.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/CoreNucleus.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/CoreNucleusAi.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/Mizu.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/MizuAi.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/nscalculation.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/RumbleData.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/HmRumbleMgr.o\
	$(BUILD_DIR)/src/plugPikiNishimura/HmRumbleSample.o\

OGAWA :=\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogTest.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogSub.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogTitle.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogPause.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogTutorial.o\
	$(BUILD_DIR)/src/plugPikiOgawa/ogTutorialData.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogMap.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogResult.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogRader.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogFileSelect.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogMessage.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogMemChk.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogDiary.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogMenu.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogFileChkSel.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogMakeDefault.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogTotalScore.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogSave.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogNitaku.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogFileCopy.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogFileDelete.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogGraph.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogStart.o\
	$(BUILD_DIR)/asm/plugPikiOgawa/ogCallBack.o\

YAMASHITA :=\
	$(BUILD_DIR)/asm/plugPikiYamashita/gameCourseClear.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/gameStageClear.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/gameCredits.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/zenMath.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/effectMgr.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/particleGenerator.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/particleLoader.o\
	$(BUILD_DIR)/src/plugPikiYamashita/solidField.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/particleManager.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/particleMdlManager.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/bBoardColourAnim.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/simpleParticle.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/tekiyteki.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/tekiyamashita.o\
	$(BUILD_DIR)/src/plugPikiYamashita/TAIanimation.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAItank.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAImar.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIAreaction.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIAmove.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIAmotion.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIAjudge.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIAattack.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DGrafContext.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DOrthoGraph.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DPerspGraph.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DPane.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DPicture.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DScreen.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DStream.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/PSUList.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/PUTRect.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DWindow.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DTextBox.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DPrint.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/P2DFont.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawGameInfo.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/zenGraphics.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawContainer.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawCommon.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/zenController.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawHurryUp.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/texAnim.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawAccount.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawMenu.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIeffectAttack.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIbeatle.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/menuPanelMgr.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIkabekuiA.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIkabekuiB.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIkabekuiC.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAItamago.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIdororo.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIhibaA.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIAeffect.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAImiurin.o\
	$(BUILD_DIR)/src/plugPikiYamashita/ptclGenPack.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawProgre.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/spectrumCursorMgr.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawWorldMap.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawCountDown.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawGameOver.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/yai.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/effectMgr2D.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawWMPause.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIusuba.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/TAIotama.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawCMcourseSelect.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawCMtitle.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawCMscore.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawCMbest.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawCMresult.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawMenuBase.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawHiScore.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/damageEffect.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/alphaWipe.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawUfoParts.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/zenSys.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawSaveMes.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawSaveFailure.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawFinalResult.o\
	$(BUILD_DIR)/asm/plugPikiYamashita/drawOptionSave.o\

BASE :=\
	$(BUILD_DIR)/src/base/PPCArch.o\

OS :=\
	$(BUILD_DIR)/asm/os/OS.o\
	$(BUILD_DIR)/asm/os/OSAlarm.o\
	$(BUILD_DIR)/src/os/OSAlloc.o\
	$(BUILD_DIR)/src/os/OSArena.o\
	$(BUILD_DIR)/asm/os/OSAudioSystem.o\
	$(BUILD_DIR)/asm/os/OSCache.o\
	$(BUILD_DIR)/asm/os/OSContext.o\
	$(BUILD_DIR)/src/os/OSError.o\
	$(BUILD_DIR)/asm/os/OSExi.o\
	$(BUILD_DIR)/asm/os/OSFont.o\
	$(BUILD_DIR)/asm/os/OSInterrupt.o\
	$(BUILD_DIR)/src/os/OSLink.o\
	$(BUILD_DIR)/asm/os/OSMessage.o\
	$(BUILD_DIR)/asm/os/OSMutex.o\
	$(BUILD_DIR)/asm/os/OSReboot.o\
	$(BUILD_DIR)/asm/os/OSReset.o\
	$(BUILD_DIR)/asm/os/OSResetSW.o\
	$(BUILD_DIR)/asm/os/OSRtc.o\
	$(BUILD_DIR)/asm/os/OSSerial.o\
	$(BUILD_DIR)/asm/os/OSSync.o\
	$(BUILD_DIR)/asm/os/OSThread.o\
	$(BUILD_DIR)/asm/os/OSTime.o\
	$(BUILD_DIR)/asm/os/OSUartExi.o\
	$(BUILD_DIR)/src/os/__start.o\
	$(BUILD_DIR)/asm/os/__ppc_eabi_init.o\

DB :=\
	$(BUILD_DIR)/asm/db/db.o\

MTX :=\
	$(BUILD_DIR)/asm/mtx/mtx.o\
	$(BUILD_DIR)/asm/mtx/mtx44.o\
	$(BUILD_DIR)/asm/mtx/vec.o\

DVD :=\
	$(BUILD_DIR)/asm/dvd/dvdlow.o\
	$(BUILD_DIR)/asm/dvd/dvdfs.o\
	$(BUILD_DIR)/asm/dvd/dvd.o\
	$(BUILD_DIR)/asm/dvd/dvdqueue.o\
	$(BUILD_DIR)/asm/dvd/dvderror.o\
	$(BUILD_DIR)/asm/dvd/fstload.o\

VI :=\
	$(BUILD_DIR)/asm/vi/vi.o\

PAD :=\
	$(BUILD_DIR)/asm/pad/Padclamp.o\
	$(BUILD_DIR)/asm/pad/Pad.o\

AI :=\
	$(BUILD_DIR)/asm/ai/ai.o\

AR :=\
	$(BUILD_DIR)/asm/ar/ar.o\
	$(BUILD_DIR)/asm/ar/arq.o\

DSP :=\
	$(BUILD_DIR)/src/dsp/dsp.o\

CARD :=\
	$(BUILD_DIR)/asm/card/CARDBios.o\
	$(BUILD_DIR)/asm/card/CARDRdwr.o\
	$(BUILD_DIR)/asm/card/CARDBlock.o\
	$(BUILD_DIR)/asm/card/CARDDir.o\
	$(BUILD_DIR)/asm/card/CARDCheck.o\
	$(BUILD_DIR)/asm/card/CARDMount.o\
	$(BUILD_DIR)/asm/card/CARDFormat.o\
	$(BUILD_DIR)/asm/card/CARDOpen.o\
	$(BUILD_DIR)/asm/card/CARDCreate.o\
	$(BUILD_DIR)/asm/card/CARDRead.o\
	$(BUILD_DIR)/asm/card/CARDWrite.o\
	$(BUILD_DIR)/asm/card/CARDDelete.o\
	$(BUILD_DIR)/asm/card/CARDStat.o\
	$(BUILD_DIR)/asm/card/CARDRename.o\

HIO :=\
	$(BUILD_DIR)/asm/hio/hio.o\

GX :=\
	$(BUILD_DIR)/asm/gx/GXInit.o\
	$(BUILD_DIR)/asm/gx/GXFifo.o\
	$(BUILD_DIR)/asm/gx/GXAttr.o\
	$(BUILD_DIR)/asm/gx/GXMisc.o\
	$(BUILD_DIR)/asm/gx/GXGeometry.o\
	$(BUILD_DIR)/asm/gx/GXFrameBuf.o\
	$(BUILD_DIR)/asm/gx/GXLight.o\
	$(BUILD_DIR)/asm/gx/GXTexture.o\
	$(BUILD_DIR)/asm/gx/GXBump.o\
	$(BUILD_DIR)/asm/gx/GXTev.o\
	$(BUILD_DIR)/asm/gx/GXPixel.o\
	$(BUILD_DIR)/src/gx/GXStubs.o\
	$(BUILD_DIR)/asm/gx/GXDisplayList.o\
	$(BUILD_DIR)/asm/gx/GXTransform.o\

RUNTIME :=\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__mem.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__va_arg.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/global_destructor_chain.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/CPlusLibPPC.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/NMWException.o\
	$(BUILD_DIR)/src/Runtime/PPCEABI/H/ptmf.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/ExceptionPPC.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/runtime.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__init_cpp_exceptions.o\

MSL_C :=\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/abort_exit.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/errno.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/ansi_fp.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/arith.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/buffer_io.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/critical_regions.ppc_eabi.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/ctype.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/ansi_files.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/locale.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/direct_io.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/mbstring.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/mem.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/mem_funcs.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/misc_io.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/printf.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/rand.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/scanf.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/string.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/strtold.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/strtoul.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/uart_console_io.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/wchar_io.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/float.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/e_asin.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/e_atan2.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/e_pow.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/fminmaxdim.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/s_atan.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/s_copysign.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/s_frexp.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/s_ldexp.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/w_atan2.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/w_pow.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/hyperbolicsf.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/inverse_trig.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/trigf.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/math_inlines.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/common_float_tables.o\

TRK_MINNOW_DOLPHIN :=\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mainloop.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/nubevent.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/nubinit.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/msg.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/msgbuf.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/serpoll_asm.o\
	$(BUILD_DIR)/src/TRK_MINNOW_DOLPHIN/serpoll.o\
	$(BUILD_DIR)/src/TRK_MINNOW_DOLPHIN/usr_put.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/dispatch.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/msghndlr.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/support.o\
	$(BUILD_DIR)/src/TRK_MINNOW_DOLPHIN/mutex_TRK.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/notify.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/flush_cache.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mem_TRK.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/__exception.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/targimpl.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/dolphin_trk.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mpc_7xx_603e.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/main_TRK.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/dolphin_trk_glue.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/targcont.o\

AMCEXI2 :=\
	$(BUILD_DIR)/asm/amcExi2/AmcExi.o\
	$(BUILD_DIR)/asm/amcExi2/AmcExi2Comm.o\

AMCNOTSTUB :=\
	$(BUILD_DIR)/src/amcnotstub/amcnotstub.o\

ODEMUEXI2 :=\
	$(BUILD_DIR)/asm/OdemuExi2/DebuggerDriver.o\

ODENOTSTUB :=\
	$(BUILD_DIR)/src/odenotstub/odenotstub.o\
