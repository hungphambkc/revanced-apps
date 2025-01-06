#!/bin/bash
# Revanced build
source ./src/build/utils.sh
# Download requirements
revanced_dl(){
	dl_gh "revanced-patches revanced-cli" "revanced" "latest"
}
1() {
	revanced_dl
	# Patch YouTube:
	get_patches_key "youtube-revanced"
	get_apk "com.google.android.youtube" "youtube" "youtube" "google-inc/youtube/youtube" "Bundle_extract"
	split_editor "youtube" "youtube"
	patch "youtube" "revanced"
	# Patch Youtube Arm64-v8a
	get_patches_key "youtube-revanced" 
	split_editor "youtube" "youtube-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
	patch "youtube-arm64-v8a" "revanced"
	# Patch Youtube Armeabi-v7a
	get_patches_key "youtube-revanced" 
	split_editor "youtube" "youtube-armeabi-v7a" "exclude" "split_config.arm64_v8a split_config.x86 split_config.x86_64"
	patch "youtube-armeabi-v7a" "revanced"
	# Patch Youtube x86
	get_patches_key "youtube-revanced" 
	split_editor "youtube" "youtube-x86" "exclude" "split_config.arm64_v8a split_config.armeabi_v7a split_config.x86_64"
	patch "youtube-x86" "revanced"
	# Patch Youtube x86_64
	get_patches_key "youtube-revanced" 
	split_editor "youtube" "youtube-x86_64" "exclude" "split_config.arm64_v8a split_config.armeabi_v7a split_config.x86"
	patch "youtube-x86_64" "revanced"
}
2() {
	revanced_dl
	# Patch Messenger:
	# Arm64-v8a
	get_patches_key "messenger"
	lock_version="1"
	get_apk "com.facebook.orca" "messenger-arm64-v8a" "messenger" "facebook-2/messenger/messenger" "arm64-v8a" "nodpi"
	patch "messenger-arm64-v8a" "revanced"
	# Patch Facebook:
	# Arm64-v8a
	get_patches_key "facebook"
 	version="490.0.0.63.82" #Force this version because only patch in this version
	get_apk "com.facebook.katana" "facebook-arm64-v8a" "facebook" "facebook-2/facebook/facebook" "arm64-v8a" "nodpi" "Android 11+"
	patch "facebook-arm64-v8a" "revanced"
}
3() {
	revanced_dl
	# Patch Google photos:
	# Arm64-v8a
	get_patches_key "gg-photos"
	get_apk "com.google.android.apps.photos" "gg-photos-arm64-v8a" "photos" "google-inc/photos/photos" "arm64-v8a" "nodpi"
	patch "gg-photos-arm64-v8a" "revanced"
	# Armeabi-v7a
	get_patches_key "gg-photos"
	get_apk "com.google.android.apps.photos" "gg-photos-armeabi-v7a" "photos" "google-inc/photos/photos" "armeabi-v7a" "nodpi"
	patch "gg-photos-armeabi-v7a" "revanced"
}
4() {
	dl_gh "revanced-patches" "revanced" "v5.7.2" #Force version this because crash on startup lastest rv patches
	dl_gh "revanced-cli" "revanced" "latest"
	# Patch Tiktok:
	get_patches_key "tiktok"
	version="37.0.4" #Force this version but missing settings https://github.com/ReVanced/revanced-patches/issues/4221#issuecomment-2564776573
	get_apk "com.zhiliaoapp.musically" "tiktok" "tik-tok-including-musical-ly" "tiktok-pte-ltd/tik-tok-including-musical-ly/tik-tok-including-musical-ly" "Bundle_extract"
	split_editor "tiktok" "tiktok"
	patch "tiktok" "revanced"
 	# Patch Tiktok Arm64-v8a:
 	split_editor "tiktok" "tiktok-arm64-v8a" "exclude" "split_config.armeabi_v7a"
  	patch "tiktok-arm64-v8a" "revanced"
	rm -f *.rvp *.jar
	revanced_dl
	# Patch Instagram:
	# Arm64-v8a
	get_patches_key "instagram"
	get_apk "com.instagram.android" "instagram-arm64-v8a" "instagram-instagram" "instagram/instagram-instagram/instagram-instagram" "arm64-v8a" "nodpi"
	patch "instagram-arm64-v8a" "revanced"
}
5() {
	revanced_dl
	# Patch Pixiv:
	get_patches_key "pixiv"
	get_apk "jp.pxv.android" "pixiv" "pixiv" "pixiv-inc/pixiv/pixiv"
	patch "pixiv" "revanced"
	# Patch Twitch:
	get_patches_key "twitch"
	get_apk "tv.twitch.android.app" "twitch" "twitch" "twitch-interactive-inc/twitch/twitch" "Bundle_extract"
	split_editor "twitch" "twitch"
	patch "twitch" "revanced"
	# Patch Twitch Arm64-v8a:
	get_patches_key "twitch"
	split_editor "twitch" "twitch-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
	patch "twitch-arm64-v8a" "revanced"
}
6() {
	revanced_dl
	# Patch Tumblr:
	get_patches_key "tumblr"
	get_apk "com.tumblr" "tumblr" "tumblr" "tumblr-inc/tumblr/tumblr" "Bundle_extract"
	split_editor "tumblr" "tumblr"
	patch "tumblr" "revanced"
	# Patch Tumblr Arm64-v8a:
	get_patches_key "tumblr"
	split_editor "tumblr" "tumblr-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
	patch "tumblr-arm64-v8a" "revanced"
	# Patch SoundCloud:
	get_patches_key "soundcloud"
	get_apk "com.soundcloud.android" "soundcloud" "soundcloud-soundcloud" "soundcloud/soundcloud-soundcloud/soundcloud-soundcloud" "Bundle_extract"
	split_editor "soundcloud" "soundcloud"
	patch "soundcloud" "revanced"
	# Patch SoundCloud Arm64-v8a:
	get_patches_key "soundcloud"
	split_editor "soundcloud" "soundcloud-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
	patch "soundcloud-arm64-v8a" "revanced"
}
7() {
	revanced_dl
	# Patch RAR:
	get_patches_key "rar"
	get_apk "com.rarlab.rar" "rar" "rar" "rarlab-published-by-win-rar-gmbh/rar/rar" "arm64-v8a"
	patch "rar" "revanced"
	# Patch Lightroom:
	get_patches_key "lightroom"
  	version="9.2.0"
	get_apk "com.adobe.lrmobile" "lightroom" "lightroom" "adobe/lightroom/lightroom"
	patch "lightroom" "revanced"
}
8() {
	revanced_dl
	get_apk "com.google.android.youtube" "youtube-lite" "youtube" "google-inc/youtube/youtube" "Bundle_extract"
	# Patch YouTube Lite Arm64-v8a:
	get_patches_key "youtube-revanced"
	split_editor "youtube-lite" "youtube-lite-arm64-v8a" "include" "split_config.arm64_v8a split_config.en split_config.xxxhdpi"
	patch "youtube-lite-arm64-v8a" "revanced"
	# Patch YouTube Lite Armeabi-v7a:
	get_patches_key "youtube-revanced"
	split_editor "youtube-lite" "youtube-lite-armeabi-v7a" "include" "split_config.armeabi_v7a split_config.en split_config.xxxhdpi"
	patch "youtube-lite-armeabi-v7a" "revanced"
}
9() {
	revanced_dl
	# Patch YouTube Music:
	# Arm64-v8a
	get_patches_key "youtube-music-revanced"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-arm64-v8a" "youtube-music" "google-inc/youtube-music/youtube-music" "arm64-v8a"
	patch "youtube-music-arm64-v8a" "revanced"
	# Armeabi-v7a
	get_patches_key "youtube-music-revanced"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-armeabi-v7a" "youtube-music" "google-inc/youtube-music/youtube-music" "armeabi-v7a"
	patch "youtube-music-armeabi-v7a" "revanced"
}
case "$1" in
    1)
        1
        ;;
    2)
        2
        ;;
    3)
        3
        ;;
    4)
        4
        ;;
    5)
        5
        ;;
    6)
        6
        ;;
    7)
        7
        ;;
    8)
        8
        ;;
    9)
        9
        ;;
esac
