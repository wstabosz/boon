### native
#./configure --disable-i386-asm --disable-gl --disable-cpu-opt
# make
# ./src/prboom -nofullscreen -nosound

### web
#EMCONFIGURE_JS=1 ~/Dev/emscripten/emconfigure ./configure --disable-i386-asm --disable-gl --disable-cpu-opt --without-net --with-sdl-prefix=/home/alon/Dev/emscripten/system
make -j 2
mv src/prboom src/prboom.bc
# blacklist all rendering methods (_R_*), and some others that show up in profiling
~/Dev/emscripten/emcc src/prboom.bc -o boon.html --preload-file prboom.wad --preload-file doom.wad -s TOTAL_MEMORY=134217728 -O3 --pre-js pre.js -s EMTERPRETIFY=1  -s EMTERPRETIFY_ASYNC=1 -s EMTERPRETIFY_BLACKLIST='["_R_StoreWallRange", "_R_DrawSprite", "_R_DrawColumn8_PointUV_PointZ", "_R_RenderSegLoop", "_R_DoDrawPlane", "_R_DrawVisSprite", "_R_MapPlane", "_R_CheckBBox", "_R_Subsector", "_R_PointToAngle", "_R_AddLine", "_R_FlushHT8", "_R_MakeSpans", "_R_DrawSpan8_PointUV_PointZ", "_R_FlushQuad8", "_R_PointToDist", "_R_ClipWallSegment", "_R_ColourMap", "_R_RenderPlayerView", "_R_ScaleFromGlobalAngle", "_R_RenderBSPNode", "_R_DrawMasked", "_R_GetTextureColumn", "_R_DrawPlanes", "_R_DrawMaskedColumn", "_R_FlushColumns", "_R_FindPlane", "_R_FakeFlat", "_R_InterpolationGetData", "_R_PointToAngle2", "_R_DrawSpan", "_R_InstallSpriteLump", "_R_GetDrawColumnFunc", "_R_PointOnSegSide", "_R_PointOnSide", "_R_CheckPlane", "_R_DupPlane", "_R_RenderMaskedSegRange", "_R_VideoErase", "_R_SafeTextureNumForName", "_R_GetPatchColumnWrapped", "_R_GetPatchColumnClamped", "_R_PointInSubsector", "_R_GetDrawSpanFunc", "_R_GetPatchColumn", "_R_StopInterpolation", "_R_DoAnInterpolation", "_R_SetInterpolation", "_R_InterpolateView", "_R_ProjectSprite", "_R_CacheTextureCompositePatchNum", "_R_SetPatchNum", "_R_DrawPSprite", "_R_InitBuffer", "_R_AddSprites", "_R_CheckTextureNumForName", "_R_ColormapNumForName", "_R_TextureNumForName", "_R_SmoothPlaying_Get", "_R_NumPatchHeight", "_R_FlatNumForName", "_R_NumPatchWidth", "_R_CachePatchNum", "_R_DrawTranslatedColumn32_RoundedUV_LinearZ", "_R_DrawTranslatedColumn16_RoundedUV_LinearZ", "_R_DrawTranslatedColumn15_RoundedUV_LinearZ", "_R_DrawTranslatedColumn8_RoundedUV_LinearZ", "_R_DrawTranslatedColumn32_RoundedUV_PointZ", "_R_DrawTranslatedColumn32_PointUV_LinearZ", "_R_DrawTranslatedColumn32_LinearUV_LinearZ", "_R_DrawTranslatedColumn16_RoundedUV_PointZ", "_R_DrawTranslatedColumn16_PointUV_LinearZ", "_R_DrawTranslatedColumn16_LinearUV_LinearZ", "_R_DrawTranslatedColumn15_RoundedUV_PointZ", "_R_DrawTranslatedColumn15_PointUV_LinearZ", "_R_DrawTranslatedColumn15_LinearUV_LinearZ", "_R_DrawTranslatedColumn8_RoundedUV_PointZ", "_R_DrawTranslatedColumn8_PointUV_LinearZ", "_R_DrawTranslatedColumn8_LinearUV_LinearZ", "_R_DrawTranslatedColumn32_PointUV_PointZ", "_R_DrawTranslatedColumn32_LinearUV_PointZ", "_R_DrawTranslatedColumn16_PointUV_PointZ", "_R_DrawTranslatedColumn16_LinearUV_PointZ", "_R_DrawTranslatedColumn15_PointUV_PointZ", "_R_DrawTranslatedColumn15_LinearUV_PointZ", "_R_DrawTranslatedColumn8_PointUV_PointZ", "_R_DrawTranslatedColumn8_LinearUV_PointZ", "_R_DrawFuzzColumn32_RoundedUV_LinearZ", "_R_DrawFuzzColumn16_RoundedUV_LinearZ", "_R_DrawFuzzColumn15_RoundedUV_LinearZ", "_R_DrawFuzzColumn8_RoundedUV_LinearZ", "_R_DrawFuzzColumn32_RoundedUV_PointZ", "_R_DrawFuzzColumn32_LinearUV_LinearZ", "_R_DrawFuzzColumn16_RoundedUV_PointZ", "_R_DrawFuzzColumn16_LinearUV_LinearZ", "_R_DrawFuzzColumn15_RoundedUV_PointZ", "_R_DrawFuzzColumn15_LinearUV_LinearZ", "_R_DrawFuzzColumn8_RoundedUV_PointZ", "_R_DrawFuzzColumn8_LinearUV_LinearZ", "_R_DrawFuzzColumn32_PointUV_LinearZ", "_R_DrawFuzzColumn32_LinearUV_PointZ", "_R_DrawFuzzColumn16_PointUV_LinearZ", "_R_DrawFuzzColumn16_LinearUV_PointZ", "_R_DrawFuzzColumn15_PointUV_LinearZ", "_R_DrawFuzzColumn15_LinearUV_PointZ", "_R_DrawTranslatedColumn32_RoundedUV", "_R_DrawTranslatedColumn16_RoundedUV", "_R_DrawTranslatedColumn15_RoundedUV", "_R_DrawTLColumn32_RoundedUV_LinearZ", "_R_DrawTLColumn16_RoundedUV_LinearZ", "_R_DrawTLColumn15_RoundedUV_LinearZ", "_R_DrawFuzzColumn8_PointUV_LinearZ", "_R_DrawFuzzColumn8_LinearUV_PointZ", "_R_DrawFuzzColumn32_PointUV_PointZ", "_R_DrawFuzzColumn16_PointUV_PointZ", "_R_DrawFuzzColumn15_PointUV_PointZ", "_R_UnlockTextureCompositePatchNum", "_R_DrawTranslatedColumn8_RoundedUV", "_R_DrawTranslatedColumn32_PointUV", "_R_DrawTranslatedColumn32_LinearUV", "_R_DrawTranslatedColumn16_PointUV", "_R_DrawTranslatedColumn16_LinearUV", "_R_DrawTranslatedColumn15_PointUV", "_R_DrawTranslatedColumn15_LinearUV", "_R_DrawTLColumn8_RoundedUV_LinearZ", "_R_DrawTLColumn32_RoundedUV_PointZ", "_R_DrawTLColumn32_PointUV_LinearZ", "_R_DrawTLColumn32_LinearUV_LinearZ", "_R_DrawTLColumn16_RoundedUV_PointZ", "_R_DrawTLColumn16_PointUV_LinearZ", "_R_DrawTLColumn16_LinearUV_LinearZ", "_R_DrawTLColumn15_RoundedUV_PointZ", "_R_DrawTLColumn15_PointUV_LinearZ", "_R_DrawTLColumn15_LinearUV_LinearZ", "_R_DrawFuzzColumn8_PointUV_PointZ", "_R_DrawTranslatedColumn8_PointUV", "_R_DrawTranslatedColumn8_LinearUV", "_R_DrawTLColumn8_RoundedUV_PointZ", "_R_DrawTLColumn8_PointUV_LinearZ", "_R_DrawTLColumn8_LinearUV_LinearZ", "_R_DrawTLColumn32_PointUV_PointZ", "_R_DrawTLColumn32_LinearUV_PointZ", "_R_DrawTLColumn16_PointUV_PointZ", "_R_DrawTLColumn16_LinearUV_PointZ", "_R_DrawTLColumn15_PointUV_PointZ", "_R_DrawTLColumn15_LinearUV_PointZ", "_R_DrawColumn32_RoundedUV_LinearZ", "_R_DrawColumn16_RoundedUV_LinearZ", "_R_DrawColumn15_RoundedUV_LinearZ", "_R_ActivateThinkerInterpolations", "_R_DrawTLColumn8_PointUV_PointZ", "_R_DrawTLColumn8_LinearUV_PointZ", "_R_DrawSpan32_RoundedUV_LinearZ", "_R_DrawSpan16_RoundedUV_LinearZ", "_R_DrawSpan15_RoundedUV_LinearZ", "_R_DrawColumn8_RoundedUV_LinearZ", "_R_DrawColumn32_RoundedUV_PointZ", "_R_DrawColumn32_PointUV_LinearZ", "_R_DrawColumn32_LinearUV_LinearZ", "_R_DrawColumn16_RoundedUV_PointZ", "_R_DrawColumn16_PointUV_LinearZ", "_R_DrawColumn16_LinearUV_LinearZ", "_R_DrawColumn15_RoundedUV_PointZ", "_R_DrawColumn15_PointUV_LinearZ", "_R_DrawColumn15_LinearUV_LinearZ", "_R_DrawSpan8_RoundedUV_LinearZ", "_R_DrawSpan32_RoundedUV_PointZ", "_R_DrawSpan32_LinearUV_LinearZ", "_R_DrawSpan16_RoundedUV_PointZ", "_R_DrawSpan16_LinearUV_LinearZ", "_R_DrawSpan15_RoundedUV_PointZ", "_R_DrawSpan15_LinearUV_LinearZ", "_R_DrawColumn8_RoundedUV_PointZ", "_R_DrawColumn8_PointUV_LinearZ", "_R_DrawColumn8_LinearUV_LinearZ", "_R_DrawColumn32_PointUV_PointZ", "_R_DrawColumn32_LinearUV_PointZ", "_R_DrawColumn16_PointUV_PointZ", "_R_DrawColumn16_LinearUV_PointZ", "_R_DrawColumn15_PointUV_PointZ", "_R_DrawColumn15_LinearUV_PointZ", "_R_DrawSpan8_RoundedUV_PointZ", "_R_DrawSpan8_LinearUV_LinearZ", "_R_DrawSpan32_PointUV_LinearZ", "_R_DrawSpan32_LinearUV_PointZ", "_R_DrawSpan16_PointUV_LinearZ", "_R_DrawSpan16_LinearUV_PointZ", "_R_DrawSpan15_PointUV_LinearZ", "_R_DrawSpan15_LinearUV_PointZ", "_R_DrawFuzzColumn32_RoundedUV", "_R_DrawFuzzColumn16_RoundedUV", "_R_DrawFuzzColumn15_RoundedUV", "_R_DrawColumn8_LinearUV_PointZ", "_R_StopInterpolationIfNeeded", "_R_DrawSpan8_PointUV_LinearZ", "_R_DrawSpan8_LinearUV_PointZ", "_R_DrawSpan32_PointUV_PointZ", "_R_DrawSpan16_PointUV_PointZ", "_R_DrawSpan15_PointUV_PointZ", "_R_DrawFuzzColumn8_RoundedUV", "_R_DrawFuzzColumn32_LinearUV", "_R_DrawFuzzColumn16_LinearUV", "_R_DrawFuzzColumn15_LinearUV", "_R_SetDefaultDrawColumnVars", "_R_DrawFuzzColumn8_LinearUV", "_R_DrawFuzzColumn32_PointUV", "_R_DrawFuzzColumn16_PointUV", "_R_DrawFuzzColumn15_PointUV", "_R_DrawTLColumn32_RoundedUV", "_R_DrawTLColumn16_RoundedUV", "_R_DrawTLColumn15_RoundedUV", "_R_DrawFuzzColumn8_PointUV", "_R_DrawTLColumn8_RoundedUV", "_R_DrawTLColumn32_PointUV", "_R_DrawTLColumn32_LinearUV", "_R_DrawTLColumn16_PointUV", "_R_DrawTLColumn16_LinearUV", "_R_DrawTLColumn15_PointUV", "_R_DrawTLColumn15_LinearUV", "_R_DrawTLColumn8_PointUV", "_R_DrawTLColumn8_LinearUV", "_R_DrawColumn32_RoundedUV", "_R_DrawColumn16_RoundedUV", "_R_DrawColumn15_RoundedUV", "_R_DrawColumn8_RoundedUV", "_R_DrawColumn32_PointUV", "_R_DrawColumn32_LinearUV", "_R_DrawColumn16_PointUV", "_R_DrawColumn16_LinearUV", "_R_DrawColumn15_PointUV", "_R_DrawColumn15_LinearUV", "_R_SmoothPlaying_Reset", "_R_DrawColumn8_PointUV", "_R_DrawColumn8_LinearUV", "_R_ResetAfterTeleport", "_R_SmoothPlaying_Add", "_R_DoInterpolations", "_R_InitTranMap", "_R_CopyInterpToOld", "_R_CopyBakToInterp", "_R_UnlockPatchNum", "_R_InitSpriteDefs", "_R_SetViewSize", "_R_InitSprites", "_R_SetupFrame", "_R_NewVisSprite", "_R_ActivateSectorInterpolations", "_R_ResetViewInterpolation", "_R_StopAllInterpolations", "_R_RestoreInterpolations", "_R_InitTranslationTables", "_R_UpdateInterpolations", "_R_InitTextureMapping", "_R_ExecuteSetViewSize", "_R_ResetColumnBuffer", "_R_InitInterpolation", "_R_DrawPlayerSprites", "_R_FlushWholeFuzz32", "_R_FlushWholeFuzz16", "_R_FlushWholeFuzz15", "_R_RecalcLineFlags", "_R_InitSpriteLumps", "_R_InitLightTables", "_R_FlushWholeFuzz8", "_R_FlushWholeError", "_R_FlushQuadFuzz32", "_R_FlushQuadFuzz16", "_R_FlushQuadFuzz15", "_R_SortVisSprites", "_R_QuadFlushError", "_R_LoadTrigTables", "_R_FlushWholeTL32", "_R_FlushWholeTL16", "_R_FlushWholeTL15", "_R_FlushQuadFuzz8", "_R_FillBackScreen", "_R_DrawViewBorder", "_R_PrecacheLevel", "_R_InitColormaps", "_R_FlushWholeTL8", "_R_FlushQuadTL32", "_R_FlushQuadTL16", "_R_FlushQuadTL15", "_R_FlushHTFuzz32", "_R_FlushHTFuzz16", "_R_FlushHTFuzz15", "_R_ClearDrawSegs", "_R_ClearClipSegs", "_R_InitTextures", "_R_FlushWhole32", "_R_FlushWhole16", "_R_FlushWhole15", "_R_FlushQuadTL8", "_R_FlushHTFuzz8", "_R_FlushHTError", "_R_ClearSprites", "_R_InitPatches", "_R_FlushWhole8", "_R_FlushQuad32", "_R_FlushQuad16", "_R_FlushQuad15", "_R_FlushHTTL32", "_R_FlushHTTL16", "_R_FlushHTTL15", "_R_ClearPlanes", "_R_InitSkyMap", "_R_InitPlanes", "_R_FlushHTTL8", "_R_FilterInit", "_R_ShowStats", "_R_InitFlats", "_R_FlushHT32", "_R_FlushHT16", "_R_FlushHT15", "_R_InitData", "_R_Init", "_FixedMul81", "_FixedMul3699", "_FixedMul3226", "_wipe_ScreenWipe", "_wipe_doMelt", "_wipe_initMelt", "___muldi3", "___muldsi3", "_between", "_FixedDiv82", "___divdi3", "___udivmoddi4", "_i64Subtract", "_llvm_ctlz_i32", "_I_GetTime_RealTime", "_D_BuildNewTiccmds"]'

