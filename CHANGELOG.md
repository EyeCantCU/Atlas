# Changelog

## [3.2.0](https://github.com/EyeCantCU/Atlas/compare/v3.1.0...v3.2.0) (2023-11-12)


### Features

* Add and enable Proton VPN repo ([a4350ff](https://github.com/EyeCantCU/Atlas/commit/a4350ff90e6685f55a85c16e9129fec7f4c8d7bb))
* Add just shortcut to install Thorium browser and install it during user setup ([c3b7748](https://github.com/EyeCantCU/Atlas/commit/c3b7748957eb51f31545a116cf174c34b58d378a))
* Bring back KDE images ([f07761e](https://github.com/EyeCantCU/Atlas/commit/f07761ef04057ccaf6301c11c5cf23bc57522126))
* **flatpaks:** Add remove lists for KDE/GNOME ([34666a4](https://github.com/EyeCantCU/Atlas/commit/34666a41cdcc0641170eae10dc46fc7766e7feec))
* Generate image info ([63e224e](https://github.com/EyeCantCU/Atlas/commit/63e224e62bbb51fb66c86ae52f902ee820be84c3))
* Install Proton VPN app ([df125c0](https://github.com/EyeCantCU/Atlas/commit/df125c054e6dda737206cd4a0a2490be5184d690))
* **just:** Add script to retrieve DevPod ([3864abf](https://github.com/EyeCantCU/Atlas/commit/3864abf393117619a696c5a7eab518132e9fa648))
* **kinoite:** Install kommit ([114feef](https://github.com/EyeCantCU/Atlas/commit/114feefbb89e19c49c52608fde7a038272fba60d))
* **kinoite:** Restore latte dock nightly ([1289d08](https://github.com/EyeCantCU/Atlas/commit/1289d08a8a524a5002c166b19157ef1123733057))
* Move to Bazzite 39 ([5889ba6](https://github.com/EyeCantCU/Atlas/commit/5889ba6d8190f0e072ddbc411985ecbe56f23afc))
* Re-enable DoT and SNTP ([6f74330](https://github.com/EyeCantCU/Atlas/commit/6f74330eb90262a81e7af285461d5eb5f9124b91))
* Restore distrobox-git ([553b473](https://github.com/EyeCantCU/Atlas/commit/553b47393df502e41878a368e9ade80d1f6141ea))
* Ship eza, a replacement for ls built on exa ([8378219](https://github.com/EyeCantCU/Atlas/commit/83782195935a83cd037aa6d3b696b6fc46dedfdf))
* **user-setup:** Give flatpaks icon access ([58a8b70](https://github.com/EyeCantCU/Atlas/commit/58a8b705a961f76bf708addb84ad86aeed2f0749))


### Bug Fixes

* **ci:** Correct image name formatting ([c703c94](https://github.com/EyeCantCU/Atlas/commit/c703c94262e54b0ae9d96315d0cc01a884162c41))
* **ci:** Correctly apply image flavor to image name ([b072b43](https://github.com/EyeCantCU/Atlas/commit/b072b430b12ddefaba82ddf82a061446d14ca58f))
* **devpod:** Drop DevPod RPM, keep CLI ([6d295eb](https://github.com/EyeCantCU/Atlas/commit/6d295eb19f034010c8adb38850f9ede38877e4be))
* **distrobox-git:** Install from last commit ([38477cb](https://github.com/EyeCantCU/Atlas/commit/38477cbc5d4803781357d80d76f7d13710b83bc6))
* **distrobox-git:** Install to /usr ([1935b78](https://github.com/EyeCantCU/Atlas/commit/1935b78d9b68ced9fa1655d6d92c943b4bd5adea))
* **distrobox-git:** Return to /, not /root ([70505a2](https://github.com/EyeCantCU/Atlas/commit/70505a2039b9edbfbfcdcd8a8f68b55ec0b581f8))
* Drop exa ([a8212b0](https://github.com/EyeCantCU/Atlas/commit/a8212b0fd047bd0febc9cf9e2bce75bcbf3cfe05))
* **fonts:** Correct path for Intel One Mono ([b856ad0](https://github.com/EyeCantCU/Atlas/commit/b856ad0fec8ccb3adbed642abb16dc7f7819161a))
* **gnome-ext:** Pin at GNOME 44 ([7e9940a](https://github.com/EyeCantCU/Atlas/commit/7e9940a4f273d1ab99155b7d383d7690fd033026))
* **hide-universal-access:** Use same method for copying as other extensions ([1c97d92](https://github.com/EyeCantCU/Atlas/commit/1c97d92372df21da1d2fef4eacd978e11403e5d0))
* **image-info:** Correct base image name and image flavor ([41a85ce](https://github.com/EyeCantCU/Atlas/commit/41a85ce305c943280ddbc82b1e814eaa04d27a88))
* Inhereit bazzite image name in source image ([8d6fc57](https://github.com/EyeCantCU/Atlas/commit/8d6fc57274a05ba535b85860dda4f5d650cc674f))
* **justfile:** Adapt for new format ([8d523fa](https://github.com/EyeCantCU/Atlas/commit/8d523fa7f7262aa7469f43000dc5068d95f79d5d))
* **kinoite:** Set __GL_YIELD to usleep under NVIDIA (again) ([6a7de37](https://github.com/EyeCantCU/Atlas/commit/6a7de37a3ac3ca7402d0915b04980717e8800bfe))
* **protonvpn:** Turn off gpgcheck ([92893fc](https://github.com/EyeCantCU/Atlas/commit/92893fc896c0daa5ae61664fbf486c6a48e5cc8b))
* **protonvpn:** Use echo instead of cat ([9b3b729](https://github.com/EyeCantCU/Atlas/commit/9b3b729d667612f852ae341c92a7e0c9d7f32146))
* **thoriubuntu:** Also install recommended fonts ([246bb6d](https://github.com/EyeCantCU/Atlas/commit/246bb6d7395977bf39cb614164b3429a1cca7ead))
* **thoriubuntu:** Install MS corefonts ([324f468](https://github.com/EyeCantCU/Atlas/commit/324f4686bb8d9bc6f79025e66640f05ecd79ce0d))
* **thoriubuntu:** Install pipewire ([77c5a8c](https://github.com/EyeCantCU/Atlas/commit/77c5a8c2a20f409ee8d8191279456b07858856d5))
* **thoriubuntu:** Restore DMZ Black cursor theme ([286052f](https://github.com/EyeCantCU/Atlas/commit/286052f15b8e28958160dff84fe322ac9eed3728))
* **thorium:** Auto enable HiDPI fixes on the Dell XPS 17 9700 ([bbed8f6](https://github.com/EyeCantCU/Atlas/commit/bbed8f67071add18be8d035bb13ee49be61013b4))
* **thorium:** Move DMZ cursor workaround to HiDPI fixes and set scaling factor to 2 ([3eaf3f3](https://github.com/EyeCantCU/Atlas/commit/3eaf3f3b66aa186ab2e468add2d365cf0fb2ff84))
* **thorium:** Properly display desktop icon in taskbar/dash2dock under Wayland ([c0342a1](https://github.com/EyeCantCU/Atlas/commit/c0342a1ab5898a5f145ee1ef3217802ec4437abe))
* **thorium:** Restore Wayland, disable fractional scaling ([4b88694](https://github.com/EyeCantCU/Atlas/commit/4b88694a5aa59a86d94f86a88db9a234d08b8051))
* **thorium:** Set ozone platform to X11 under GNOME NVIDIA ([934ff32](https://github.com/EyeCantCU/Atlas/commit/934ff326ed4d917d7f27182034d7fac34e086df8))
* **ublue-update:** Disable dbus notifications without replacing base config ([370406a](https://github.com/EyeCantCU/Atlas/commit/370406a2eef23ce3c6cdd04be3784ee8d4826035))
* **user-setup:** Always run after bazzite-user-setup ([3e8a476](https://github.com/EyeCantCU/Atlas/commit/3e8a476fb4bdbf7495cbe8afbadc48e989490244))
* **user-setup:** Only enable supergfxctl GNOME extension on the XPS 17 9700 ([7cadf39](https://github.com/EyeCantCU/Atlas/commit/7cadf39968f73d15d2c5b0529e52137ca5c3be53))
* **user-setup:** Retrieve image identifiers from image info ([392d30a](https://github.com/EyeCantCU/Atlas/commit/392d30a934d616fb83348631f16b7e6c8a72e7c9))

## [3.1.0](https://github.com/EyeCantCU/Atlas/compare/v3.0.0...v3.1.0) (2023-09-14)


### Features

* Add and enable extension that hides the Universal Access button ([2ce55da](https://github.com/EyeCantCU/Atlas/commit/2ce55da9a0dbeda9cb64e180075c622eb30cfd07))
* Add and enable Pano clipboard extension ([de72525](https://github.com/EyeCantCU/Atlas/commit/de725257013634794680a6d5552b96cef27704f1))
* Add and enable Rounded Window Corners extension ([3d0ebc6](https://github.com/EyeCantCU/Atlas/commit/3d0ebc635ae0a51ea14bcb1e24eb297367a1d5b3))
* **extensions:** Add Reboot to UEFI ([ffb24b9](https://github.com/EyeCantCU/Atlas/commit/ffb24b94b3bf0d5cd7ef757d6390fa7f8b7befe7))
* **extensions:** Ship Grand Theft Focus ([1b7f8f0](https://github.com/EyeCantCU/Atlas/commit/1b7f8f05bb5cb945e3be60adde019b7772a5fb49))
* **flatpaks:** Add Zoom ([c19ff17](https://github.com/EyeCantCU/Atlas/commit/c19ff1795a273c09b30efae2aeb1716a0558a5d1))
* **flatpaks:** Bundle ProtonVPN and ProtonMail bridge ([1d9f907](https://github.com/EyeCantCU/Atlas/commit/1d9f907eaf4c1a0a13bd170869568caaeffee825))
* **flatpaks:** Include Blackbox terminal ([b49359a](https://github.com/EyeCantCU/Atlas/commit/b49359aaa71ae5b623c05ddb4b7f2d704eda5fd9))
* **flatpaks:** Include Brave Browser ([3dd56dc](https://github.com/EyeCantCU/Atlas/commit/3dd56dc1de31845379f3ea2ae40db018c7441129))
* **flatpaks:** Include Easy Effects ([26ed4fe](https://github.com/EyeCantCU/Atlas/commit/26ed4fe0ecc6fe42257f47fa514f92597e5d776a))
* **flatpaks:** Include qBittorrent ([66b6d59](https://github.com/EyeCantCU/Atlas/commit/66b6d59958e48533ac7d19d21ac6df4adbe4435a))
* **flatpaks:** Include VLC ([1ba22cd](https://github.com/EyeCantCU/Atlas/commit/1ba22cd3c1b495e737c6825d36479e251849bd62))
* **flatpaks:** Ship Barrier ([1f154e0](https://github.com/EyeCantCU/Atlas/commit/1f154e0a069263a8277d672acc65a1b5974ce31d))
* **flatpaks:** Ship Bitwarden ([8092a36](https://github.com/EyeCantCU/Atlas/commit/8092a366e4f13cef6609ba982ee9ede98e41bf66))
* **flatpaks:** Ship Bottles for Windows games and software ([6eb7731](https://github.com/EyeCantCU/Atlas/commit/6eb773191d47f70e6d67dfc8aeadf30f80c8ee6b))
* **flatpaks:** Ship Calibre ([c9c75b7](https://github.com/EyeCantCU/Atlas/commit/c9c75b7427f3c9966c41a6012a2aac258f3aee97))
* **flatpaks:** Ship Discord ([56599d4](https://github.com/EyeCantCU/Atlas/commit/56599d48b5860644d807a29de83d9e4b66f70945))
* **flatpaks:** Ship FreeTube ([9f9bdb7](https://github.com/EyeCantCU/Atlas/commit/9f9bdb7a7d901027f50b1c950ff216b9f92742a7))
* **flatpaks:** Ship Jellyfin Media Player ([2b2b5b4](https://github.com/EyeCantCU/Atlas/commit/2b2b5b4f53433565b3fce1b9da71f1a04b0bbca3))
* **flatpaks:** Ship SyncThing ([270e961](https://github.com/EyeCantCU/Atlas/commit/270e9610f43ef3f0e7f65bcc75480f2cb03a22bb))
* **flatpaks:** Ship Tidal HiFi ([8fcf919](https://github.com/EyeCantCU/Atlas/commit/8fcf919075fd9580d47c5cba01babed5c5241ce9))
* Layer telnet ([a495f6f](https://github.com/EyeCantCU/Atlas/commit/a495f6f83e57b79adbcf270b2d678a75acc75524))
* **scripts:** Layer Tabby ([743d6b6](https://github.com/EyeCantCU/Atlas/commit/743d6b687dbee22893ddb974aba763a0841099c8))
* **user-setup:** Add and enable drive menu extension ([e06d731](https://github.com/EyeCantCU/Atlas/commit/e06d73120e1222d9d608458b69211aaafa962db7))
* **user-setup:** Always use 24hr clock format ([8e50fdd](https://github.com/EyeCantCU/Atlas/commit/8e50fdd408ff5b681a98a166ae1155b7b04749d1))
* **user-setup:** Automatically choose location for weather ([b6ee568](https://github.com/EyeCantCU/Atlas/commit/b6ee568ce2bc42873d758c355ecc0ee1b7640908))
* **user-setup:** Enable automatic timezone switching ([d80bc0c](https://github.com/EyeCantCU/Atlas/commit/d80bc0cc3d5e6d0e6233c557139971b87cd3d722))
* **user-setup:** Enable Caffeine extension ([948c7d6](https://github.com/EyeCantCU/Atlas/commit/948c7d6b0caa81d898eb01a5cdcac7a924aa2417))
* **user-setup:** Enable dark theme by default and configure gradience ([dc8cd72](https://github.com/EyeCantCU/Atlas/commit/dc8cd72a56d1134e64ea2bb436415b9be8909e66))
* **user-setup:** Enable places menu extension ([97b2b5f](https://github.com/EyeCantCU/Atlas/commit/97b2b5fe6c9690df3242f2ad2d394e4d819fde57))
* **user-setup:** Set sane touchpad defaults ([b2d68f6](https://github.com/EyeCantCU/Atlas/commit/b2d68f6370dbfc085994f2e845c8e7196f064c82))
* **user-setup:** Show day of the week next to date ([3511e99](https://github.com/EyeCantCU/Atlas/commit/3511e997c05d4df2dad2570c62eb16c27ca0fbc3))
* **user-setup:** Show week number in calendar ([9336053](https://github.com/EyeCantCU/Atlas/commit/93360537f4a51c009f802841be159c19a802feef))
* **user-setup:** Use 'Iceland' background from Linux Mint 18.1 'Serena' ([bbcb6ef](https://github.com/EyeCantCU/Atlas/commit/bbcb6efe9faedcab53b8780d472fece0bc6eab28))
* **user-setup:** Use IntelOne Mono as the monospace font ([f933c62](https://github.com/EyeCantCU/Atlas/commit/f933c6281036c7af41e84bf72d75141204987a73))
* **user-setup:** Use rgba font antialiasing instead of grayscale ([f4ddd00](https://github.com/EyeCantCU/Atlas/commit/f4ddd00fac51abdc94100cf4be7cc7c723dbce65))
* **user-setup:** Use the Inter font across the desktop ([89b2049](https://github.com/EyeCantCU/Atlas/commit/89b204928e59d300447fe4739b82c792b87735a0))


### Bug Fixes

* Don't override Ublue signing ([b1960e1](https://github.com/EyeCantCU/Atlas/commit/b1960e197e553bc92f709735967df23091708b90))
* **flatpaks:** Lists are now in /usr ([38ba06c](https://github.com/EyeCantCU/Atlas/commit/38ba06c3a4e1a0efea9976591642cd204fb7331e))
* **just:** Copy wallpapers to Pictures ([2c89369](https://github.com/EyeCantCU/Atlas/commit/2c89369b217aacfac29c65ddb048a60fbb1f8a54))
* Ship caffeine ([5a52164](https://github.com/EyeCantCU/Atlas/commit/5a52164c64b4e34cbca9529dcddda849d0c650a2))
* **tabby:** Attempt to fix installation ([d060f55](https://github.com/EyeCantCU/Atlas/commit/d060f55fd3a887536a6b4fc0caccf1287dd3c12c))
* **tabby:** Move to just script ([6ed7dab](https://github.com/EyeCantCU/Atlas/commit/6ed7dab4be14fa488a6ccc94b7c97bf02a6d9220))
* **ublue-os-just:** Make executable ([5abca77](https://github.com/EyeCantCU/Atlas/commit/5abca770d2bc88513b84aeb2f464e531b7140d12))
* **user-setup:** Correct magnifier settings ([f650de9](https://github.com/EyeCantCU/Atlas/commit/f650de95772f85e56b245156ef9c0f30bda70421))
* **user-setup:** Disable fractional scaling ([2ff3bb9](https://github.com/EyeCantCU/Atlas/commit/2ff3bb9b52d3108fc932240772cac95c786793a6))
* **user-setup:** Don't center new windows, this breaks programs launching in the foreground ([5cbe58a](https://github.com/EyeCantCU/Atlas/commit/5cbe58a602cd3b183e5c27860df8d046f0532b10))
* **user-setup:** Properly apply dash2dock settings ([4a43024](https://github.com/EyeCantCU/Atlas/commit/4a430240f21d70e4d39f22a9c789322831df376e))
* **user-setup:** Remove gradience configuration ([6d80349](https://github.com/EyeCantCU/Atlas/commit/6d8034933cda8b397e357021b9bef493a3e4d253))

## [3.0.0](https://github.com/EyeCantCU/Atlas/compare/v2.9.1...v3.0.0) (2023-08-19)


### Features

* Add and enable appindicator extension by default ([aa7aab6](https://github.com/EyeCantCU/Atlas/commit/aa7aab6d580ffa52044cc9c2c274021d216f1e89))
* Add dash2dock extension ([8e22f5b](https://github.com/EyeCantCU/Atlas/commit/8e22f5bc436660fe16ee75aeb19c90061d705548))
* Add dependencies for Pano extension ([cf04218](https://github.com/EyeCantCU/Atlas/commit/cf04218cc8f242017375b22df857fb15b7a4095a))
* Add just script to enable SDDM HiDPI ([7fe3514](https://github.com/EyeCantCU/Atlas/commit/7fe351472492a1892f64a3070cd95a503d9a38d9))
* Add just scripts back ([d8390dc](https://github.com/EyeCantCU/Atlas/commit/d8390dc5930699b037467ccc2f6bf5addd1b7d3b))
* Add user setup script that disables magnifier tracking by default ([dfc7e0f](https://github.com/EyeCantCU/Atlas/commit/dfc7e0f9710fdb93c1dcb3d8f7a2a68c53aac72e))
* Configure signing ([188fe35](https://github.com/EyeCantCU/Atlas/commit/188fe359f0c7a74cb4618d2527be94315123d49c))
* Continue using X11 for SDDM ([504362b](https://github.com/EyeCantCU/Atlas/commit/504362bcfae6c038f53c637d55b97b9448bc2548))
* **distrobox:** Add configs for dev-arch and ham-suse ([3751e68](https://github.com/EyeCantCU/Atlas/commit/3751e6863c0a44a9ba5a5ebf8de2df38194168c2))
* Enable supergfxd by default on Nvidia images ([e9d9a44](https://github.com/EyeCantCU/Atlas/commit/e9d9a449d576c9a2ef3ba8faf7f962cd663ae6bc))
* **just:** Add just scripts to assemble dev-arch and ham-suse ([3b4b6f3](https://github.com/EyeCantCU/Atlas/commit/3b4b6f3ecf8ef94081f12fc00685763806e96db2))
* **just:** Rebase on Bazzite config ([49ea2e9](https://github.com/EyeCantCU/Atlas/commit/49ea2e9e1c0e700f9954f8b1d4001163c72bb400))
* **just:** Restore just scripts excluding distrobox ones ([cfd5d29](https://github.com/EyeCantCU/Atlas/commit/cfd5d296ab60408733857fd8c43903f165edcb77))
* Rebase on Bazzite ([c4247d6](https://github.com/EyeCantCU/Atlas/commit/c4247d6e1c70654ba91f7aea157c03fac5fa260e))
* Switch to GNOME ([51191ee](https://github.com/EyeCantCU/Atlas/commit/51191ee6205180b19a2913cb6e76f232bbba5924))
* **temp:** Test Bazzite fork ([0cf381e](https://github.com/EyeCantCU/Atlas/commit/0cf381e4c901e4a5ca6e6c465c3fd5ea1fec1868))
* Use larger Ubuntu Nerd fonts and bring over fontconfig ([f1d33fc](https://github.com/EyeCantCU/Atlas/commit/f1d33fcd0aa4db7330930b83bfe4732887e7eea6))
* **user-setup:** Enable blur my shell extension by default ([202f324](https://github.com/EyeCantCU/Atlas/commit/202f324854cc7e07eba672b6f2aefd429580af1b))
* **user-setup:** Enable dash2dock by default ([f015e1d](https://github.com/EyeCantCU/Atlas/commit/f015e1d6593ae87d4e3ca3de49a986b8c1d98db0))
* **user-setup:** Enable supergfxctl-gex on Nvidia by default ([c456561](https://github.com/EyeCantCU/Atlas/commit/c456561285036be30805ea4f2206b724adf47e4b))
* **yafti:** Add ham-suse and dev-arch ([a982edb](https://github.com/EyeCantCU/Atlas/commit/a982edb4bb0d303a97a3018260aa97f66e5e771f))
* **yafti:** Add Open Android Installer back to utilities ([1484009](https://github.com/EyeCantCU/Atlas/commit/1484009395a043dd562748d925f20e42176dd63d))
* **yafti:** Give flatpaks icon access ([a40d771](https://github.com/EyeCantCU/Atlas/commit/a40d7716c0f920ea2f289a956dada5490ce9644e))
* **yafti:** Install as user ([b3402ed](https://github.com/EyeCantCU/Atlas/commit/b3402ed5b5ee5d218ef398098578b21b0956311b))
* **yafti:** Rebase on Bazzite ([351aa22](https://github.com/EyeCantCU/Atlas/commit/351aa22df59e7776c173ec209b4c3f8cd566c4b8))
* **yafti:** Reintroduce Software Development section ([3ca55b7](https://github.com/EyeCantCU/Atlas/commit/3ca55b796c694c12c484262a3cbfe03fdbef4fb1))


### Bug Fixes

* **carl:** Drop Aurorae window decorations ([7b4328f](https://github.com/EyeCantCU/Atlas/commit/7b4328fe3151352db36fb1ca2d3524c913dadfb1))
* Drop WhiteSur cursors ([f065855](https://github.com/EyeCantCU/Atlas/commit/f065855d0b35a0df5a355bb452d8337d5395323a))
* **enable-zsh:** Fix plugins being skipped ([be79e8e](https://github.com/EyeCantCU/Atlas/commit/be79e8ebdea3b93c98a58894e25d94da77c43716))
* **fonts:** Copying fonts from bling has been fixed ([a56daad](https://github.com/EyeCantCU/Atlas/commit/a56daadb6f31622b9072dcb41cfc9d39ffea3741))
* **fonts:** Properly copy over and address skewed naming issues ([a0b48a0](https://github.com/EyeCantCU/Atlas/commit/a0b48a0a5288da0d68c0aa47ea322690b6edf3c3))
* **kwin:** Remove GL_YIELD workaround used for Nvidia under X11 ([86c1f72](https://github.com/EyeCantCU/Atlas/commit/86c1f72636755cf3375955eddce61222e46999d1))
* Properly set service timeout ([5a13ab9](https://github.com/EyeCantCU/Atlas/commit/5a13ab969ea24af12edbff1e6a93597d6fed6778))
* **recipe:** Remove redundant removals ([a446a9f](https://github.com/EyeCantCU/Atlas/commit/a446a9f8fff08de8f7f42ec355a1e54bfd954545))
* **recipe:** Remove Steam Deck KDE presets for desktop configs ([78f5d8e](https://github.com/EyeCantCU/Atlas/commit/78f5d8ebe60778a50e403fecbbceb3d2059d6a2a))
* **recipe:** Remove yafti script ([57591f6](https://github.com/EyeCantCU/Atlas/commit/57591f623114e672fc11443cc47a0500ec56cb1b))
* **signing:** Move to /usr ([1d4e877](https://github.com/EyeCantCU/Atlas/commit/1d4e877b19441cdbd6ac2ab3c061f234dde0c9db))
* **signing:** Move to Containerfile ([306c700](https://github.com/EyeCantCU/Atlas/commit/306c7000b68152ce17966cddf2aa0f2cddc74f0b))
* **terra:** Temp disable ([715a8d9](https://github.com/EyeCantCU/Atlas/commit/715a8d9be09e19a6c34a60ca8736c3ed11e0153d))
* Use new Wallpaper Engine plugin Copr ([3d81fc5](https://github.com/EyeCantCU/Atlas/commit/3d81fc5e7096d82acf59b13ccac5cdf00e6b3a4c))
* **yafti:** Remove firstboot launcher configuration ([a0dcc9d](https://github.com/EyeCantCU/Atlas/commit/a0dcc9d8d06c76268d813c9a2a34fe9a60ce57e0))


### Reverts

* "feat(temp): Test Bazzite fork" ([d44a195](https://github.com/EyeCantCU/Atlas/commit/d44a19502ff5b22f8f7665e83d599dbc34d886cd))


### Miscellaneous Chores

* release 3.0.0 ([d56597a](https://github.com/EyeCantCU/Atlas/commit/d56597a4a239f51e28edb57b6c157456f2eb2522))

## [2.9.1](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.9.0...v2.9.1) (2023-07-08)


### Bug Fixes

* Remove HiDPI images from boot menu ([f1aadd5](https://github.com/EyeCantCU/BlueWhaleOS/commit/f1aadd5bd9f1c6380bafe435f4a761761212de7f))

## [2.9.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.8.0...v2.9.0) (2023-07-08)


### Features

* Drop HiDPI images and X11 config ([060cfdf](https://github.com/EyeCantCU/BlueWhaleOS/commit/060cfdfd8910614a866d26715e3ea03bbd03b13e))

## [2.8.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.7.0...v2.8.0) (2023-07-02)


### Features

* Add latte dock nightly from Terra ([387371c](https://github.com/EyeCantCU/BlueWhaleOS/commit/387371c68334d63fa306ba95bb4bbc9820588914))
* Build for Surface devices ([9ab49ae](https://github.com/EyeCantCU/BlueWhaleOS/commit/9ab49ae97e9fb75557bcd3f41358b261890bbbf0))
* Implement touchegg gestures ([132d221](https://github.com/EyeCantCU/BlueWhaleOS/commit/132d221832043a826f0ff2e486463919aa64e0dd))
* **just:** Enable Zsh plugins during setup ([914d858](https://github.com/EyeCantCU/BlueWhaleOS/commit/914d858b86803cbc6cab454c07503ea8aee1ae19))
* Pull in fonts from bling ([d475aa6](https://github.com/EyeCantCU/BlueWhaleOS/commit/d475aa6d328293efca4760012509386be4225442))
* **recipe:** Allow for multiple build types ([764a44b](https://github.com/EyeCantCU/BlueWhaleOS/commit/764a44bf6c9ab38ac3957e8ef7ae64eb329cb56b))
* **surface:** Add to boot menu ([110134b](https://github.com/EyeCantCU/BlueWhaleOS/commit/110134b8d0478f26a13274094e6dbbcf0bedb12b))
* **system76-scheduler:** Pull kwin and dbus-proxy integration from Bazzite ([aff0b7e](https://github.com/EyeCantCU/BlueWhaleOS/commit/aff0b7eeec65732ae95a1bf46e12f1601f85ca9a))
* **touchegg:** Enable service ([0985ba6](https://github.com/EyeCantCU/BlueWhaleOS/commit/0985ba61f26cbdbdbad335184833a4634b5df3c3))


### Bug Fixes

* **build:** Actually apply build type ([cd974a6](https://github.com/EyeCantCU/BlueWhaleOS/commit/cd974a609f1ebf786c1ab85bf1070bde5a286444))
* **surface:** Remove kernel-devel-matched ([39ccf84](https://github.com/EyeCantCU/BlueWhaleOS/commit/39ccf8409658fe327ce892454be4c364e91e15ce))
* **surface:** Try install-to-root ([da4b189](https://github.com/EyeCantCU/BlueWhaleOS/commit/da4b18975823fdbfd44d51617a61c2a66a3b28c1))

## [2.7.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.6.0...v2.7.0) (2023-06-27)


### Features

* Add nanorc with sane defaults ([daa98b4](https://github.com/EyeCantCU/BlueWhaleOS/commit/daa98b4fa5634d2259eba7ae5ad8cf4d0b10808d))
* Add OpenGamepadUI ([924f931](https://github.com/EyeCantCU/BlueWhaleOS/commit/924f93168638081c93814c8ebcfe4cccbe729c69))
* Configure ZRAM ([6503592](https://github.com/EyeCantCU/BlueWhaleOS/commit/6503592b05e5e0b0a276c9d9f27a907614e55be6))
* Include SELinux fix for games using the hl2 engine ([6a0cfd8](https://github.com/EyeCantCU/BlueWhaleOS/commit/6a0cfd83f5a8f2c528bf15a059c8f288d01cc179))
* Include Steam Deck KDE themes ([a9872a8](https://github.com/EyeCantCU/BlueWhaleOS/commit/a9872a84ff5ee5b5390af16f21a225023170896c))
* Ship DevPod ([182c328](https://github.com/EyeCantCU/BlueWhaleOS/commit/182c32868ef0dd5e1c83f9109b5ed93c89c325b1))
* Ship ubuntu-nerd-fonts ([b675f2e](https://github.com/EyeCantCU/BlueWhaleOS/commit/b675f2e502dfffbf42c865aa4cdbc199e4693f87))
* Ship Wallpaper Engine KDE plugin ([4919130](https://github.com/EyeCantCU/BlueWhaleOS/commit/49191304bbd2fdc70d284ffc9c0abfbe674023c5))


### Bug Fixes

* Drop git linux firmware ([9ad78f5](https://github.com/EyeCantCU/BlueWhaleOS/commit/9ad78f58c8528928b3dbe07bf019695ba61cb8c7))
* Increase scale factor to 2.5x in HiDPI configurations ([1dc70f3](https://github.com/EyeCantCU/BlueWhaleOS/commit/1dc70f34c9d34cd0dc2b972fd508d8b8fda104fb))
* Refresh font cache for Inter fonts ([9f074a7](https://github.com/EyeCantCU/BlueWhaleOS/commit/9f074a7eb5e396de4c620d67e512aedfedf7fdd9))

## [2.6.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.5.0...v2.6.0) (2023-06-20)


### Features

* Add system76-scheduler ([1ed1887](https://github.com/EyeCantCU/BlueWhaleOS/commit/1ed1887f024c10662bea738b5492bed8a30ab5f4))
* Kill configure-zsh service and move functionality to just ([76f8888](https://github.com/EyeCantCU/BlueWhaleOS/commit/76f888856658b51d268cc8d370df5ba54c6b9137))


### Bug Fixes

* Remove latte dock ([3800be2](https://github.com/EyeCantCU/BlueWhaleOS/commit/3800be2b3d88d46c36fc3dd2bc2abc92c4f31d94))
* Remove mesa-git ([87cc67a](https://github.com/EyeCantCU/BlueWhaleOS/commit/87cc67a0adb9880c3898f488d2cc52b26d745189))

## [2.5.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.4.0...v2.5.0) (2023-06-18)


### Features

* Add Chiaki to yafti for PS5 streaming ([fd2b6fd](https://github.com/EyeCantCU/BlueWhaleOS/commit/fd2b6fde43ac85d75f486fc230d95ebec131f3b4))
* Add just script to install wallpapers from various distros ([177cc1d](https://github.com/EyeCantCU/BlueWhaleOS/commit/177cc1d9752c06ebb36356afd5e0b5568485c783))
* Add main (non-Nvidia) images and consolidate build system ([9f97a90](https://github.com/EyeCantCU/BlueWhaleOS/commit/9f97a907a9fe3f7f9476174f72402b2d65e20dce))
* Add music tab to yafti with Spotify and Tidal-hifi ([9017482](https://github.com/EyeCantCU/BlueWhaleOS/commit/90174821c0cfff52c7d2e0abce153f2400db8b53))
* Ship Android tools and udev rules ([3e7e103](https://github.com/EyeCantCU/BlueWhaleOS/commit/3e7e10328f7d1c79d92a43c8fcb95ba2eb0d0c35))
* Use upstream Nix (un)installation scripts ([ba31b28](https://github.com/EyeCantCU/BlueWhaleOS/commit/ba31b28ea02aaa7a88dd4873e702e1e9ecb121d1))


### Bug Fixes

* Export pycharm-professional as pycharm ([2f897c4](https://github.com/EyeCantCU/BlueWhaleOS/commit/2f897c4ee6ec3d66ba1028cdffa18723e9ade9af))
* How on Earth? ([78d4b64](https://github.com/EyeCantCU/BlueWhaleOS/commit/78d4b6444ba50da59f812e99772bf10a62168497))
* Include Zsh in bazzite-arch ([4c79337](https://github.com/EyeCantCU/BlueWhaleOS/commit/4c7933784728bff8741fd82110247a4c969e5f4d))

## [2.4.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.3.0...v2.4.0) (2023-06-15)


### Features

* Include cosign in builds ([7c2de2c](https://github.com/EyeCantCU/BlueWhaleOS/commit/7c2de2c34dcf2604499be18c7150540047da5d02))


### Bug Fixes

* Add terra repo ([0f98e17](https://github.com/EyeCantCU/BlueWhaleOS/commit/0f98e17ad6175fc547ffe066a5be38cda315c2ff))
* Build font cache for Ubuntu fonts ([89440f7](https://github.com/EyeCantCU/BlueWhaleOS/commit/89440f7f1fdd0ed276eedf2a8d036542c3304deb))
* Ensure configure-zsh.sh is executable ([c9f41cf](https://github.com/EyeCantCU/BlueWhaleOS/commit/c9f41cf3c5f5818ab3646d9d2568685f023e3504))
* Remove Plasma Wayland session ([b41763e](https://github.com/EyeCantCU/BlueWhaleOS/commit/b41763e83fa8a35a4b431de7df4240f895499188))
* What we do to one, we have to do to the other ([fd9fc1d](https://github.com/EyeCantCU/BlueWhaleOS/commit/fd9fc1d4013476ae72644fcc8a4aeb90eed9986e))

## [2.3.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.2.0...v2.3.0) (2023-06-15)


### Features

* Add ddccontrol ([8aa8b03](https://github.com/EyeCantCU/BlueWhaleOS/commit/8aa8b038217c2dcbd3124b0783a38a9d22d36c37))
* Add Input Remapper ([d6c09f4](https://github.com/EyeCantCU/BlueWhaleOS/commit/d6c09f43b21badf2c88e2198ebf7113df41cee08))
* Add intelone mono fonts ([dfdcdd1](https://github.com/EyeCantCU/BlueWhaleOS/commit/dfdcdd1f509736f453c16502ea5be60b4f7e3a01))
* Add p7zip-tools ([06843a5](https://github.com/EyeCantCU/BlueWhaleOS/commit/06843a5f74a8e1eda8d814b44a3f481b807a109f))
* Add remaining fonts from bluefin ([f4df9ff](https://github.com/EyeCantCU/BlueWhaleOS/commit/f4df9ff0872a7403d727283fda1d48d9da785e8e))
* Update Nix installer from bluefin ([02db34d](https://github.com/EyeCantCU/BlueWhaleOS/commit/02db34d2d7ff3fff3fc2433d9b06a154ed7b6381))

## [2.2.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.1.0...v2.2.0) (2023-06-15)


### Features

* Add Greenlight to gaming configuration for xCloud/xHome ([6ce88ee](https://github.com/EyeCantCU/BlueWhaleOS/commit/6ce88eea6c8b3e19d0aa37dd21d763ef04da21e4))
* Add just scripts to hide/unhide GRUB menu ([614ad5f](https://github.com/EyeCantCU/BlueWhaleOS/commit/614ad5fc512181769bc704c0adcc1f68894f636b))
* Add Xournal++ ([ff417a5](https://github.com/EyeCantCU/BlueWhaleOS/commit/ff417a5800c21b0cad8fd1617f105066a1ca4563))
* Configure gestures for touchpads ([681f1af](https://github.com/EyeCantCU/BlueWhaleOS/commit/681f1afd5cea72ee2fb1a42a57a8ceb58ea4a5bb))
* Make some improvements to configure-zsh ([710550e](https://github.com/EyeCantCU/BlueWhaleOS/commit/710550eec88cd8f866720cd5f6736f8f97c7e371))


### Bug Fixes

* Adjust HiDPI icon sizes ([1fde39e](https://github.com/EyeCantCU/BlueWhaleOS/commit/1fde39e91ef67004d676d32b28587807fea85275))

## [2.1.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.0.1...v2.1.0) (2023-06-14)


### Features

* Add just script for Deezer ([1b7f388](https://github.com/EyeCantCU/BlueWhaleOS/commit/1b7f3881051c1e0bc5648322db8b5eddd6b204fa))


### Bug Fixes

* Export steam from bazzite-arch, not ham-suse ([38c382b](https://github.com/EyeCantCU/BlueWhaleOS/commit/38c382be6b1221a4aaa02394556f08c2562bf021))

## [2.0.1](https://github.com/EyeCantCU/BlueWhaleOS/compare/v2.0.0...v2.0.1) (2023-06-14)


### Bug Fixes

* Enable Zsh via autostart.sh instead of yafti ([508c130](https://github.com/EyeCantCU/BlueWhaleOS/commit/508c13061797741bafce64480e56732f58c42abf))

## [2.0.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v1.4.0...v2.0.0) (2023-06-14)


### ⚠ BREAKING CHANGES

* optimize container layers and reduce image size
* only deploy the branch named "live", to simplify development
* remove legacy PWA setup command from custom.just
* move justfile to standardized, non-conflicting new location
* add new recipe flag which allows you to completely disable yafti
* enhanced autostart.desktop to use new script, and always find icon
* move all autostart-related files to standardized location
* move firstboot reference to new yafti.yml location ([#72](https://github.com/EyeCantCU/BlueWhaleOS/issues/72))
* move yafti.yml to standardized location
* move justfile to standardized location
* move recipe.yml to standardized location
* change base-container to base-image ([#49](https://github.com/EyeCantCU/BlueWhaleOS/issues/49))

### Features

* Add a few ham radio packages ([7942cbb](https://github.com/EyeCantCU/BlueWhaleOS/commit/7942cbbcfc728422c858db027e9bd8f29a59db3b))
* add a just setup command for setting up nix ([#48](https://github.com/EyeCantCU/BlueWhaleOS/issues/48)) ([1d208f6](https://github.com/EyeCantCU/BlueWhaleOS/commit/1d208f6eaec5000daab9e4bce69e5547a916df89))
* add back usr folder ([9f47c1e](https://github.com/EyeCantCU/BlueWhaleOS/commit/9f47c1eddfc00779de2fc4c07bb6816bda9adf76))
* Add btop ([0336e78](https://github.com/EyeCantCU/BlueWhaleOS/commit/0336e78d6d41a5bb91f25d04864d08b981cdf10c))
* Add code-of-conduct ([#39](https://github.com/EyeCantCU/BlueWhaleOS/issues/39)) ([aab8078](https://github.com/EyeCantCU/BlueWhaleOS/commit/aab8078cfdc7d2354e057a0ca4771d3a53d2df4c))
* add conventional commit linting and release notes generator ([b7820b4](https://github.com/EyeCantCU/BlueWhaleOS/commit/b7820b4ba312ca939d0dc977ed9f6a08d135324b))
* add cosign.key to gitignore ([#51](https://github.com/EyeCantCU/BlueWhaleOS/issues/51)) ([5f4ac04](https://github.com/EyeCantCU/BlueWhaleOS/commit/5f4ac049a7f60bb55e40da809e29ac1dd9f65fc9))
* Add duperemove ([f5a526f](https://github.com/EyeCantCU/BlueWhaleOS/commit/f5a526f370740877d2b54c1e7c7450e2a1ee9d8f))
* add extra repos field to recipe ([#52](https://github.com/EyeCantCU/BlueWhaleOS/issues/52)) ([c537104](https://github.com/EyeCantCU/BlueWhaleOS/commit/c537104ba2695a3c843ba7e67e7a118665f50c9a))
* add fedora 38 build ([#45](https://github.com/EyeCantCU/BlueWhaleOS/issues/45)) ([69fd4d7](https://github.com/EyeCantCU/BlueWhaleOS/commit/69fd4d7a57c5ce39331e47e8dedeb2a2f643190f))
* add function for reading individual YAML strings ([33ab88f](https://github.com/EyeCantCU/BlueWhaleOS/commit/33ab88f7940b6e360d3e8d7f4a1b0b393547dd92))
* add how to review a PR ([#76](https://github.com/EyeCantCU/BlueWhaleOS/issues/76)) ([ae2e25b](https://github.com/EyeCantCU/BlueWhaleOS/commit/ae2e25b92f5ebebed2fcaad53ecfab651a639d12))
* Add just script to install dev-arch distrobox image ([5f5f254](https://github.com/EyeCantCU/BlueWhaleOS/commit/5f5f254ba5dd96cbfa319ed1b1fc852ac7d66df6))
* Add just script to install JetBrains IDEs to dev image ([0621e38](https://github.com/EyeCantCU/BlueWhaleOS/commit/0621e388f102bf62e1dd87b7e2b718ed18ac61ea))
* add new recipe flag which allows you to completely disable yafti ([32c06b0](https://github.com/EyeCantCU/BlueWhaleOS/commit/32c06b0867b0e4f66c3d1dfa303530682c16a52f))
* add per-recipe shell script support ([#38](https://github.com/EyeCantCU/BlueWhaleOS/issues/38)) ([37143b0](https://github.com/EyeCantCU/BlueWhaleOS/commit/37143b0e23582f8754808b77aee4b594bb877ba1))
* Add pre/post-install commands to yafti and clean up a bit ([9af8757](https://github.com/EyeCantCU/BlueWhaleOS/commit/9af8757ba95bcbab014908affa1516354d8f1ca6))
* Add ProtonUp-Qt to default flatpaks ([58f2432](https://github.com/EyeCantCU/BlueWhaleOS/commit/58f243214447f830b0bcc0262a39a7d643e82b79))
* Add several utilities to yafti ([53754d3](https://github.com/EyeCantCU/BlueWhaleOS/commit/53754d3092f8a59076eda0093a359837a55d5cd2))
* Add software development section to yafti ([f0e470a](https://github.com/EyeCantCU/BlueWhaleOS/commit/f0e470a45fee2c36a0ff26e6cd7c4df6a1b152a7))
* Add supergfxctl plasmoid ([9c2c310](https://github.com/EyeCantCU/BlueWhaleOS/commit/9c2c310c83083b9cfa0c979ea3dd81760a8fa04e))
* Add supergfxd and power-profiles-daemon services ([733b240](https://github.com/EyeCantCU/BlueWhaleOS/commit/733b240b8232b4b79ce29d690a0266b00a69281b))
* Add Ubuntu font family ([d3c6d9b](https://github.com/EyeCantCU/BlueWhaleOS/commit/d3c6d9b6ac1c7bf518e2ca60c21c4e7040901beb))
* Add WhiteSur cursors ([119c777](https://github.com/EyeCantCU/BlueWhaleOS/commit/119c7774b83de640de31aab08cab11cd09227b0f))
* add yafti.yml from bluefin ([f9a1561](https://github.com/EyeCantCU/BlueWhaleOS/commit/f9a1561f2c8a718890f4d932db8ce625342610e2))
* Adjust Fedora theme defaults ([fe7831f](https://github.com/EyeCantCU/BlueWhaleOS/commit/fe7831f37a32bf3f09afe0ba80847da08a5e2998))
* Adjust SDDM DPI ([9b650ef](https://github.com/EyeCantCU/BlueWhaleOS/commit/9b650efe30acf8a760a7a0668bcf090c632298cb))
* Adopt gaming configuration from Bazzite ([e8c32a9](https://github.com/EyeCantCU/BlueWhaleOS/commit/e8c32a9f93a16be5757828c973723cdcbd89e724))
* automatic repo version selection via YAML configuration ([baa8c47](https://github.com/EyeCantCU/BlueWhaleOS/commit/baa8c47ffa97ae25077d205432bec0c549b27319))
* Automatically update dev-arch ([f5ff6d9](https://github.com/EyeCantCU/BlueWhaleOS/commit/f5ff6d9a91faa6226d2b659e8e4bc9c451da8e89))
* Automatically update ham-suse ([90a4817](https://github.com/EyeCantCU/BlueWhaleOS/commit/90a4817f4d83b70b72ac3a6f8fd27398c4856358))
* Base on Ublue Kinoite w/ Nvidia drivers ([a677c5a](https://github.com/EyeCantCU/BlueWhaleOS/commit/a677c5a523eca56c0d4582f3f70fe87a87f5cfce))
* Change default wallpaper for SDDM to Darkest Hour ([eec4b45](https://github.com/EyeCantCU/BlueWhaleOS/commit/eec4b45ef160737bb0182bf545549bb6ee115c70))
* change description for more information ([33ddd2b](https://github.com/EyeCantCU/BlueWhaleOS/commit/33ddd2bbac6eebbf4716af0465808f2e2fe56ebc))
* declare base image and fedora ver in recipe ([fe16187](https://github.com/EyeCantCU/BlueWhaleOS/commit/fe16187a92400865b4f96e82ce4d6781478bdfe6))
* declare image description in recipe.yml ([c9c011d](https://github.com/EyeCantCU/BlueWhaleOS/commit/c9c011d842a9ef9ec5d3976a0fd167b22ca0f0ed))
* declare image name in recipe.yml ([2b40d4b](https://github.com/EyeCantCU/BlueWhaleOS/commit/2b40d4b4367c669f1e557194db7bc14ac40f8b53))
* Disable single click ([13bf875](https://github.com/EyeCantCU/BlueWhaleOS/commit/13bf8759c9d2d28d6864f0bf38aea7bf591b409b))
* Download UpNote post-install ([d3b7668](https://github.com/EyeCantCU/BlueWhaleOS/commit/d3b76682e4e47187f23aae594fa575ed7fd12233))
* ease customization by reading flatpaks and rpms to install from a recipe.yml. ([#79](https://github.com/EyeCantCU/BlueWhaleOS/issues/79)) ([a5e90a5](https://github.com/EyeCantCU/BlueWhaleOS/commit/a5e90a588f58a938405bf513d1032955be34028e))
* Enable Carl for Konsole ([10ed431](https://github.com/EyeCantCU/BlueWhaleOS/commit/10ed431643eeafb58ca6ca679b401f05f5c5c28b))
* Enable Carl with breeze-dark icons by default ([7a8fed2](https://github.com/EyeCantCU/BlueWhaleOS/commit/7a8fed2c94f6db8550ddc65d1b7fd15e23584cb2))
* Enable HiDPI in SDDM ([2543bdc](https://github.com/EyeCantCU/BlueWhaleOS/commit/2543bdcf9451d03adc4be0bcfad90cbc02370b44))
* Enable libvirtd ([9fc2b0f](https://github.com/EyeCantCU/BlueWhaleOS/commit/9fc2b0f498a0410c4cc7b811ca3c29c80319e8fc))
* enable manually running build ([2521741](https://github.com/EyeCantCU/BlueWhaleOS/commit/2521741049e25b13c3865225be26c3d63aa84a21))
* Exchange kwrite for kate ([b0c811c](https://github.com/EyeCantCU/BlueWhaleOS/commit/b0c811c611c1b13ce4e855f03d48e552613e1172))
* Export Chirp from ham-suse ([2119ed8](https://github.com/EyeCantCU/BlueWhaleOS/commit/2119ed8cccbd7d67d6a3bf61c781edfb48b871d2))
* Export Steam after installing gaming image ([b2016d0](https://github.com/EyeCantCU/BlueWhaleOS/commit/b2016d0809543dad32a977d114f87e2af237835e))
* Export VS Code from dev-arch ([869d66b](https://github.com/EyeCantCU/BlueWhaleOS/commit/869d66bd8802207f128b99ba2ada86e16ea3caa8))
* Generate ISOs for installation ([597afbe](https://github.com/EyeCantCU/BlueWhaleOS/commit/597afbe027130a89f1f5124e8879acc49f6cb73f))
* gha for building / publishing on pr ([#87](https://github.com/EyeCantCU/BlueWhaleOS/issues/87)) ([1726d18](https://github.com/EyeCantCU/BlueWhaleOS/commit/1726d182ee95ce5eb13f47212799a68b63c5aefc))
* implement a very flexible runner for "pre" and "post" scripts ([55ff636](https://github.com/EyeCantCU/BlueWhaleOS/commit/55ff6363be7a783a5949ede05575d2936a4c6e29))
* implement effortless RPM removal via YAML configuration ([bf19fa5](https://github.com/EyeCantCU/BlueWhaleOS/commit/bf19fa5eca5b6440f4cfe83aa33c2c2e5797d33e))
* Include additional cli utilities ([e1e21ff](https://github.com/EyeCantCU/BlueWhaleOS/commit/e1e21ff87133e1c266c213fc7f9e45844c8e2810))
* Include Carl Plasma theme ([15ff61c](https://github.com/EyeCantCU/BlueWhaleOS/commit/15ff61c42b6af4f13ea8db741d67b1c9ad621aec))
* Include EmuDeck in gaming setup ([f7383e4](https://github.com/EyeCantCU/BlueWhaleOS/commit/f7383e48d99c6374cecd5d26e03c00038f5440fd))
* include flowchart graphic which explains new launcher hierarchy ([2f85593](https://github.com/EyeCantCU/BlueWhaleOS/commit/2f85593176abfe9eafdd59780d7909e386af4c15))
* Include FreeTube ([be888f3](https://github.com/EyeCantCU/BlueWhaleOS/commit/be888f34bcc9dae402664a018b20fb7e991d4114))
* Include latest Linux firmware ([e62e2f9](https://github.com/EyeCantCU/BlueWhaleOS/commit/e62e2f9dc7fa491a1b682c8ffc530d1533a5d113))
* Include micro editor ([3f5f5ea](https://github.com/EyeCantCU/BlueWhaleOS/commit/3f5f5eac7f3b88b440aa610861f7c7722fc22927))
* Include packages in virtualization group ([01d164e](https://github.com/EyeCantCU/BlueWhaleOS/commit/01d164eef713cac05e9d8749981321c0a7aad91a))
* install repos first, so that they're available for scripting ([d09dd76](https://github.com/EyeCantCU/BlueWhaleOS/commit/d09dd7624355076616735f82e066f364c0d02470))
* Install VanillaOS' first-setup ([#55](https://github.com/EyeCantCU/BlueWhaleOS/issues/55)) ([43ddf0a](https://github.com/EyeCantCU/BlueWhaleOS/commit/43ddf0a123911f9dedc3a76dcfc314a7cb37e871))
* just do it 2 electric boogaloo ([962adbc](https://github.com/EyeCantCU/BlueWhaleOS/commit/962adbc4d5ccbc15df560084a2076db346c02273))
* just setup UpNote ([2339d27](https://github.com/EyeCantCU/BlueWhaleOS/commit/2339d27cc403eb54824da11bb817c6b50d779f36))
* Launch discover from yafti ([0b840e5](https://github.com/EyeCantCU/BlueWhaleOS/commit/0b840e5e796f921b9372766cd53b2429f6730e6f))
* leave a warning for people to move to new repo ([#99](https://github.com/EyeCantCU/BlueWhaleOS/issues/99)) ([ffcb397](https://github.com/EyeCantCU/BlueWhaleOS/commit/ffcb3973bd540d679ab033ed94de6336b903e7dd))
* Make ham programs flatpaks ([ca240c8](https://github.com/EyeCantCU/BlueWhaleOS/commit/ca240c8a83256822c137548d0fcc72174bdbfce3))
* new "autostart" binary, for easy startup customization ([8a5fd31](https://github.com/EyeCantCU/BlueWhaleOS/commit/8a5fd31f8877ff425dd360ab2cd8a63e67ddd95a))
* nix uninstaller for ublue-os systems ([#93](https://github.com/EyeCantCU/BlueWhaleOS/issues/93)) ([a01549d](https://github.com/EyeCantCU/BlueWhaleOS/commit/a01549d081f199c25d923751db4e88718c371612))
* only deploy the branch named "live", to simplify development ([da17603](https://github.com/EyeCantCU/BlueWhaleOS/commit/da17603567bd7206a844d932c1cac34329d05817))
* Only wait 10s for systemd services ([03453ea](https://github.com/EyeCantCU/BlueWhaleOS/commit/03453ea551b9c501ebfbf3f0bb02b8cfc28d870c))
* Provide flatpaks with access to icons ([fcf4949](https://github.com/EyeCantCU/BlueWhaleOS/commit/fcf4949480ca7bc06fe814aa591dd607bcf9e57a))
* refactor build.sh to use the new yafti launcher ([63a5e35](https://github.com/EyeCantCU/BlueWhaleOS/commit/63a5e3583b1f3fdd4224e5f7cf9844c7a2b3f0da))
* Replace Celluloid with VLC ([b0c3c39](https://github.com/EyeCantCU/BlueWhaleOS/commit/b0c3c39a29b7151a51ee15d1a0b7375e5d37c95a))
* Rework gaming and streaming setup ([dace598](https://github.com/EyeCantCU/BlueWhaleOS/commit/dace59881aac6e6a81277b2c6e68e066f43b21b3))
* sanity check Flathub's existence on all systems and all users ([aa157c2](https://github.com/EyeCantCU/BlueWhaleOS/commit/aa157c2514f8725e7535501fc4a02f95544a5850))
* Separate HiDPI images ([b34acd1](https://github.com/EyeCantCU/BlueWhaleOS/commit/b34acd1ccda0622c5ed3bc7631c56d7d62934e51))
* Set Darkest Hour as default wallpaper for breeze-dark ([d373a3c](https://github.com/EyeCantCU/BlueWhaleOS/commit/d373a3c8dd60334dfcd57938ac8e5208abfc0e39))
* Set default panel thickness to 76 ([7952ef7](https://github.com/EyeCantCU/BlueWhaleOS/commit/7952ef7f9634b0af32b89e88783b8468f4765bbf))
* Set kscreenlocker wallpaper to Darkest Hour ([0b12173](https://github.com/EyeCantCU/BlueWhaleOS/commit/0b121730e46df84c5a80741ee50c362d7de95267))
* Setup gaming post-install ([f930101](https://github.com/EyeCantCU/BlueWhaleOS/commit/f930101cab4fdb329de106f5bcd1c6c7c917feec))
* Setup Zsh and service that configures it at boot ([85ee11f](https://github.com/EyeCantCU/BlueWhaleOS/commit/85ee11f9823615af9f34b59529a5ccf012d26b35))
* Ship AppImageLauncher ([c197bad](https://github.com/EyeCantCU/BlueWhaleOS/commit/c197bada5c1265969c148fa272a13157b9fb4153))
* Ship bottles ([f109217](https://github.com/EyeCantCU/BlueWhaleOS/commit/f1092172aa9a58b827d86375d65024b81c8f5fff))
* Ship Brave browser ([4713c9d](https://github.com/EyeCantCU/BlueWhaleOS/commit/4713c9dfc55e7eb1159fdfc1d7b6c19ba25713ba))
* Ship chatgpt-shell-cli w/ glow ([6e57fe2](https://github.com/EyeCantCU/BlueWhaleOS/commit/6e57fe26195d6e6bc4c4611fbf8c2fd753145932))
* Ship Discord ([edb0559](https://github.com/EyeCantCU/BlueWhaleOS/commit/edb0559bbb9368ddbfa7fceb14f4cf193ec98b04))
* Ship Flatseal ([26685aa](https://github.com/EyeCantCU/BlueWhaleOS/commit/26685aafd5c15f14a0e899c640307801db913c61))
* Ship Inter fonts ([e79a1a1](https://github.com/EyeCantCU/BlueWhaleOS/commit/e79a1a1f261f17f6e9a7c662f8ac83f981ede02d))
* Ship latest hosts file from Steven Black for adblocking ([533cc2f](https://github.com/EyeCantCU/BlueWhaleOS/commit/533cc2fd286fd6e666c85348732609f7a6dbbb3c))
* Ship latte dock ([9745009](https://github.com/EyeCantCU/BlueWhaleOS/commit/97450090d7cc43e477098d452a5653b27266602b))
* Ship ProtonUp-Qt ([e0f440e](https://github.com/EyeCantCU/BlueWhaleOS/commit/e0f440e746e765398cb3c4c590ded0da6439e0b8))
* Ship Steam flatpak ([1a0229b](https://github.com/EyeCantCU/BlueWhaleOS/commit/1a0229b53a61eae9e91253a6f1aa2d0f4d4a72fa))
* Ship Telegram ([57054df](https://github.com/EyeCantCU/BlueWhaleOS/commit/57054dfa0ed9d710889ae98fa2c015b32f33abee))
* Ship VS Code ([2e84e0f](https://github.com/EyeCantCU/BlueWhaleOS/commit/2e84e0fdb2799d2a84415602fb156623c1727697))
* Ship xbindkeys and configure scroll based desktop zoom ([05e5d49](https://github.com/EyeCantCU/BlueWhaleOS/commit/05e5d49d55c0a2de28c6494d2efee1c33e561d3b))
* Show hidden files (last) and full path by default ([18d723a](https://github.com/EyeCantCU/BlueWhaleOS/commit/18d723ab9bd00a9147d55e533243801b204a719a))
* split flatpak update units into user and system ([#72](https://github.com/EyeCantCU/BlueWhaleOS/issues/72)) ([99c15be](https://github.com/EyeCantCU/BlueWhaleOS/commit/99c15be6f012cb590891c5ef16b2613dc538d144))
* streamlined YAML configuration for RPM-related settings ([4ca33a3](https://github.com/EyeCantCU/BlueWhaleOS/commit/4ca33a3fe37afeb14a5e764813f623be7c2af042))
* swap out custom build for RPM of vanilla-first-setup ([#59](https://github.com/EyeCantCU/BlueWhaleOS/issues/59)) ([6927892](https://github.com/EyeCantCU/BlueWhaleOS/commit/6927892581dadf8f31419a0d9b070bb7268513ba))
* switch to separate build script ([68122c8](https://github.com/EyeCantCU/BlueWhaleOS/commit/68122c87cacbadc47bd85403c2d1c5b5b49eab3f))
* switch to yafti for first boot ([0b669f5](https://github.com/EyeCantCU/BlueWhaleOS/commit/0b669f5bb502c5e334474c54c95fbb7fed184b36))
* tag PR builds independently from matrix.version, latest, and stable ([b022183](https://github.com/EyeCantCU/BlueWhaleOS/commit/b02218386235e6d40a11a48b5b1171e9acf8d1eb))
* ultimate laziness achieved with a powerful new script runner ([5cacb2f](https://github.com/EyeCantCU/BlueWhaleOS/commit/5cacb2fcd86aa499aba4188ef6357e7e008373bc))
* update artifacthub readme url ([6cc44ff](https://github.com/EyeCantCU/BlueWhaleOS/commit/6cc44ff4a9462727260733d9c973aae5a3f90c46))
* use a recipe matrix ([1bfabe6](https://github.com/EyeCantCU/BlueWhaleOS/commit/1bfabe674e92dd5bf7fc12956941857de4eacd0a))
* Use Carl as default in new user configurations ([90c881a](https://github.com/EyeCantCU/BlueWhaleOS/commit/90c881a93f0d15c9ac37b72f8728ff4da0697892))
* Use distrobox from git for nvidia support ([be543d6](https://github.com/EyeCantCU/BlueWhaleOS/commit/be543d62513493415f11b481ef8440968a0539f2))
* Use distrobox images for gaming and ham radio ([36dd673](https://github.com/EyeCantCU/BlueWhaleOS/commit/36dd6730cc53495dd85333ecbf058631fbd03422))
* use Fedora 38 ([#64](https://github.com/EyeCantCU/BlueWhaleOS/issues/64)) ([60ddd67](https://github.com/EyeCantCU/BlueWhaleOS/commit/60ddd67713b1fd843377276dbefb1afd54e23cc0))
* Use mesa from git ([e8c06dd](https://github.com/EyeCantCU/BlueWhaleOS/commit/e8c06ddd74dfb500948ec20fd44fea082b7c574e))
* Use Ubuntu fonts with rgb sub-pixel rendering and slight hinting ([b2511c5](https://github.com/EyeCantCU/BlueWhaleOS/commit/b2511c5ad14b42e90886dea6d483bd03ba8913cb))
* yafti package group for recipe.yml ([0cf6b13](https://github.com/EyeCantCU/BlueWhaleOS/commit/0cf6b13b6c44135848ae9a400b2fa3aa5aed657d))


### Bug Fixes

* $IMAGE_NAME -&gt; ${{ env.IMAGE_NAME }} ([678ab12](https://github.com/EyeCantCU/BlueWhaleOS/commit/678ab12c5ac41751775ca6898d09e2d09ea2d8b3))
* add a warning that we change the flatpak configuration ([#80](https://github.com/EyeCantCU/BlueWhaleOS/issues/80)) ([9a349e2](https://github.com/EyeCantCU/BlueWhaleOS/commit/9a349e2625791b90c11f640938060344ec3e4bd5))
* add flags to ensure that build aborts if there are errors ([4b9fe0b](https://github.com/EyeCantCU/BlueWhaleOS/commit/4b9fe0b05bd138cebd825e67cb6c5a062181d6d8))
* add libadwaita ([#45](https://github.com/EyeCantCU/BlueWhaleOS/issues/45)) ([ec91345](https://github.com/EyeCantCU/BlueWhaleOS/commit/ec91345bc71b373b3fa5aff4ad3df0eefec45fa4))
* add pip for yafti, remove zenity (unneeded) ([9e827fe](https://github.com/EyeCantCU/BlueWhaleOS/commit/9e827fe6be1495221cecc83746d266a78c55ba96))
* add recipe build arg ([#23](https://github.com/EyeCantCU/BlueWhaleOS/issues/23)) ([a27e3cf](https://github.com/EyeCantCU/BlueWhaleOS/commit/a27e3cfa13fbf76e145a6fcd4bb469d42daf5995))
* add shebang ([97ee716](https://github.com/EyeCantCU/BlueWhaleOS/commit/97ee7169f4a287520b516bc377b90046b717daaf))
* add the missing GNOME Core apps to "yafti" template ([7c3ae59](https://github.com/EyeCantCU/BlueWhaleOS/commit/7c3ae599e521fdab197dd8710f3b38b057d3f007))
* Add vte dependency for first-setup ([#56](https://github.com/EyeCantCU/BlueWhaleOS/issues/56)) ([f8917a3](https://github.com/EyeCantCU/BlueWhaleOS/commit/f8917a3258196f85b8e3805f5ebcb1c9c0db06a7))
* add zenity to not break if th FROM is changed ([9b3578b](https://github.com/EyeCantCU/BlueWhaleOS/commit/9b3578b2175d4ad2427736ff7a7e3bc962ea35f0))
* Address permission issue by moving configure-zsh.sh to /etc/profile.d ([82bc24c](https://github.com/EyeCantCU/BlueWhaleOS/commit/82bc24c72945042d79dc164b3f5a184496d5e1ac))
* allow forks to push to registry with label ([#86](https://github.com/EyeCantCU/BlueWhaleOS/issues/86)) ([14b1b7c](https://github.com/EyeCantCU/BlueWhaleOS/commit/14b1b7cb044ec616817aa30075609469dcb9986b))
* Apply hosts in /usr as well ([40c1376](https://github.com/EyeCantCU/BlueWhaleOS/commit/40c1376fa74d3a849eb87620810e28c6b86576b0))
* artifact upload/extract ([#88](https://github.com/EyeCantCU/BlueWhaleOS/issues/88)) ([6590066](https://github.com/EyeCantCU/BlueWhaleOS/commit/6590066ebcf72d6c4a56730dd682088db17d7df0))
* automatically determine current fedora version during build ([946f3d8](https://github.com/EyeCantCU/BlueWhaleOS/commit/946f3d82eec8bfb12a187c00b31aa5ac512fa0d7))
* Base image URL should reflect Kinoite Nvidia ([9c28a0e](https://github.com/EyeCantCU/BlueWhaleOS/commit/9c28a0e39b52dd217d03dba07dbaefb92341649d))
* change img to startingpoint in verification ([21eafaa](https://github.com/EyeCantCU/BlueWhaleOS/commit/21eafaa3c09c888f8b90a0345855a5024a24dacb))
* chore: manual merge action updates from main  ([#41](https://github.com/EyeCantCU/BlueWhaleOS/issues/41)) ([a9c15ac](https://github.com/EyeCantCU/BlueWhaleOS/commit/a9c15ac30655689f15e83e2534335f2b49a4622b))
* Containerfile has the RUNs ([bf5607e](https://github.com/EyeCantCU/BlueWhaleOS/commit/bf5607e49985d82ac95a0b42d1b7eeee5af00399))
* Correct Carl install paths ([c70563b](https://github.com/EyeCantCU/BlueWhaleOS/commit/c70563b727d04bcfc5c95e306a98898dabc30096))
* corrected readme ([9d831ac](https://github.com/EyeCantCU/BlueWhaleOS/commit/9d831ac736a658ae9949e17363abacfb37618f2b))
* Create duperemove directory later ([93396ad](https://github.com/EyeCantCU/BlueWhaleOS/commit/93396ad1fe660ef3aa87521dfe0d738bb193887f))
* Custom package names aren't supported in yafti ([0237f5f](https://github.com/EyeCantCU/BlueWhaleOS/commit/0237f5fd4d5554d5c92c331312f826fbee3bffa7))
* declare image name in one place ([73de53c](https://github.com/EyeCantCU/BlueWhaleOS/commit/73de53cd39fbc4a5c84e27d9df7215f91d689ab4))
* Disable kwin blur ([d59d25b](https://github.com/EyeCantCU/BlueWhaleOS/commit/d59d25b320e55fd9ef3802d91ccc8719a876a70a))
* Disable often choppy animations ([b61cd26](https://github.com/EyeCantCU/BlueWhaleOS/commit/b61cd262b9ab0a9a715c1e6076875059eef179d0))
* distrobox instances created with just should pass 'nvidia' flag ([b57f5fa](https://github.com/EyeCantCU/BlueWhaleOS/commit/b57f5fa29ff31d73d7466636345a1b3b12c2908f))
* don't copy usr as it's empty ([8b389d5](https://github.com/EyeCantCU/BlueWhaleOS/commit/8b389d5f049c6e9c74c9a742edf798d52beaab28))
* Don't generate an image when README.md is updated ([#36](https://github.com/EyeCantCU/BlueWhaleOS/issues/36)) ([8c170cf](https://github.com/EyeCantCU/BlueWhaleOS/commit/8c170cfe89dd306eec0940f4dc50ed245c94bc2b))
* Don't override plasma defaults ([ee11d61](https://github.com/EyeCantCU/BlueWhaleOS/commit/ee11d6172d84ddb2d0f96f99e269d26301e48881))
* Don't start latte dock during setup ([b05b16b](https://github.com/EyeCantCU/BlueWhaleOS/commit/b05b16b3a3a8bd1bfab0212ce33442e8b923baf7))
* Enable configure-zsh via just ([a5ea572](https://github.com/EyeCantCU/BlueWhaleOS/commit/a5ea5726dd430c41b41c82a1d06eba5d42204953))
* Enable WhiteSur cursor in SDDM ([b5201fd](https://github.com/EyeCantCU/BlueWhaleOS/commit/b5201fdfa70df13aafdd8cfb736c9ad38535b36e))
* enhanced autostart.desktop to use new script, and always find icon ([ec4d01c](https://github.com/EyeCantCU/BlueWhaleOS/commit/ec4d01caa8dfeeb152e474a40d7485903be98edd))
* Ensure we are using breeze-dark icons ([6a69e0b](https://github.com/EyeCantCU/BlueWhaleOS/commit/6a69e0bcbffadfef6901b971a66118e5e2b85708))
* extremely robust handling for YAML data fetching ([07cbe2c](https://github.com/EyeCantCU/BlueWhaleOS/commit/07cbe2cc08908ffef4a4543f2e50f0c3a80ed559))
* faster installation of custom RPMs ([5f072b8](https://github.com/EyeCantCU/BlueWhaleOS/commit/5f072b8b671ccb68b8e15aff62abebda4ac1115a))
* forgot a directory used by duperemove ([5a2f88f](https://github.com/EyeCantCU/BlueWhaleOS/commit/5a2f88ff5ed76f323499d7a389cdf4f75abb72f1))
* friendlier experience in the "yafti" first boot template ([c7deb7d](https://github.com/EyeCantCU/BlueWhaleOS/commit/c7deb7d6fe3aa4256d7a79123ffc250a24165263))
* further improve portability of login-profile.sh ([4318180](https://github.com/EyeCantCU/BlueWhaleOS/commit/4318180a7c134fc06c83bac550c90c50678550d8))
* Handle Zsh configuration w/ just properly ([8471abe](https://github.com/EyeCantCU/BlueWhaleOS/commit/8471abedf197bf5b594c1af9cd5660e712bb3ddc))
* improve "yq" arguments in justfile ([abbb283](https://github.com/EyeCantCU/BlueWhaleOS/commit/abbb283dbe69d1e126a8bf41141c517cdda0d488))
* Include util-linux-user for chsh ([4ef8e13](https://github.com/EyeCantCU/BlueWhaleOS/commit/4ef8e1359465b6c934800ed0305fba2e4b67ae1f))
* Increase icon size on HiDPI builds ([5cb5b3f](https://github.com/EyeCantCU/BlueWhaleOS/commit/5cb5b3fcea23c9f86d48e59fa9346dc5d5e26653))
* Initialize distrobox images after downloading them ([bc1df54](https://github.com/EyeCantCU/BlueWhaleOS/commit/bc1df546c2d1e239416b010146f21361932ded05))
* just do it ([29c7be7](https://github.com/EyeCantCU/BlueWhaleOS/commit/29c7be7cba2db20370a4ef17b06bff85d83a7243))
* Let's not use preview stack ([bd5112e](https://github.com/EyeCantCU/BlueWhaleOS/commit/bd5112e741375dd4137e29bb9aea50eca441e0a8))
* Let's try that again ([1e658cd](https://github.com/EyeCantCU/BlueWhaleOS/commit/1e658cd989ee413a3d2365b31b8c591877663424))
* loop over lines, functional var substitution ([773fc23](https://github.com/EyeCantCU/BlueWhaleOS/commit/773fc23804d7f6d5c044d46c28564a62d709f171))
* Lower SDDM DPI to 216 ([10d8b28](https://github.com/EyeCantCU/BlueWhaleOS/commit/10d8b28a7249a26764f1791f334640269cf5a0eb))
* Make OS name lowercase to address warning ([acaed2d](https://github.com/EyeCantCU/BlueWhaleOS/commit/acaed2d5b4fcd89376c6ee921ac03e14e235ea76))
* Make sure mesa git is actually pulled ([5861a55](https://github.com/EyeCantCU/BlueWhaleOS/commit/5861a5542753716291944e2e659aadff5387a4a9))
* maybe? ([099445b](https://github.com/EyeCantCU/BlueWhaleOS/commit/099445ba07bd79240a1ba10646e7ab71df8b69b0))
* move all autostart-related files to standardized location ([34f6189](https://github.com/EyeCantCU/BlueWhaleOS/commit/34f6189d26043b0efb4242d186cfc211a0a16c14))
* move firstboot reference to new yafti.yml location ([#72](https://github.com/EyeCantCU/BlueWhaleOS/issues/72)) ([7004136](https://github.com/EyeCantCU/BlueWhaleOS/commit/700413653ee904c20a5ba2eb365dcfda33c77fec))
* move justfile to standardized location ([07642c2](https://github.com/EyeCantCU/BlueWhaleOS/commit/07642c2f43167d13b51ef3b29fa0679908fa8d93))
* move justfile to standardized, non-conflicting new location ([cec7397](https://github.com/EyeCantCU/BlueWhaleOS/commit/cec73978cf2ff49b0aad5278485e8854f5738519))
* move recipe.yml to standardized location ([077e724](https://github.com/EyeCantCU/BlueWhaleOS/commit/077e7243f264840cb71b801335cc9b728ee73813))
* move yafti.yml to standardized location ([8ee9967](https://github.com/EyeCantCU/BlueWhaleOS/commit/8ee996722f698d585651b252d60ef57d59fc1627))
* moving recipe back to a directory available on the host ([#47](https://github.com/EyeCantCU/BlueWhaleOS/issues/47)) ([95ff830](https://github.com/EyeCantCU/BlueWhaleOS/commit/95ff830b49649fd3d76f54e7cce1727ace6ac6c6))
* OBS VK capture moved to streaming ([a714f1c](https://github.com/EyeCantCU/BlueWhaleOS/commit/a714f1c5c5a2810ef090d0ed2998bfecc090da5d))
* only create yafti grp when flatpaks defined ([#46](https://github.com/EyeCantCU/BlueWhaleOS/issues/46)) ([b3f7f07](https://github.com/EyeCantCU/BlueWhaleOS/commit/b3f7f07d6ceca0489d699c6d2dfa4d995588c5c1))
* only generate date tag for main branch ([94aa5bb](https://github.com/EyeCantCU/BlueWhaleOS/commit/94aa5bb8df2aac0985d4c9422b19b0c03a3f25b0))
* optimize container layers and reduce image size ([e8b5be6](https://github.com/EyeCantCU/BlueWhaleOS/commit/e8b5be6e83099043a4aa51460154940af3ee7ce2))
* pre-generate empty "pre" and "post" script directories ([f0946f7](https://github.com/EyeCantCU/BlueWhaleOS/commit/f0946f74b9c93c46a57186d7df6d9310c1fb508b))
* prevent /etc/ merge issues ([#43](https://github.com/EyeCantCU/BlueWhaleOS/issues/43)) ([085d26a](https://github.com/EyeCantCU/BlueWhaleOS/commit/085d26aa1acd7252c1c54fbd18661fed1a69d4e1))
* Prevent plasma theming from being overwritten ([5e8f9c2](https://github.com/EyeCantCU/BlueWhaleOS/commit/5e8f9c255b9e78b2a8897af19c0b717d506a97f5))
* Purge post-build scripts - RTFM ([e219a0b](https://github.com/EyeCantCU/BlueWhaleOS/commit/e219a0b8b6b34ab8307ab9014824f1d0d14aafbb))
* re-tag image ([#92](https://github.com/EyeCantCU/BlueWhaleOS/issues/92)) ([a831ce0](https://github.com/EyeCantCU/BlueWhaleOS/commit/a831ce00df84d94e2bdb48013f650bcbb5b39568))
* remove -y flag from yq; not in  go version ([5a98ef6](https://github.com/EyeCantCU/BlueWhaleOS/commit/5a98ef653293d5d3a9b4f0920d3625291a93601a))
* remove 38 ([#89](https://github.com/EyeCantCU/BlueWhaleOS/issues/89)) ([8a6f343](https://github.com/EyeCantCU/BlueWhaleOS/commit/8a6f3433ad45b0f9f3da974a691001c02f498fb1))
* remove 38 builds and fix logo metadata ([#62](https://github.com/EyeCantCU/BlueWhaleOS/issues/62)) ([521f0ad](https://github.com/EyeCantCU/BlueWhaleOS/commit/521f0adcda598a1bf494d969df375f0c0a03a10c))
* remove duplicate flatpaks from recipe.yml ([4afc5b1](https://github.com/EyeCantCU/BlueWhaleOS/commit/4afc5b1b4482ec6eb5e1841cbb57d3d9e3d98f5c))
* remove extremely verbose "x" flag ([20e0a06](https://github.com/EyeCantCU/BlueWhaleOS/commit/20e0a06588e9b0e4edb3522f4d9602d2e681f4af))
* remove if statements ([#96](https://github.com/EyeCantCU/BlueWhaleOS/issues/96)) ([0c7bc17](https://github.com/EyeCantCU/BlueWhaleOS/commit/0c7bc17666ae038a0504d24a0e683f724c734527))
* remove legacy PWA setup command from custom.just ([ecb6fde](https://github.com/EyeCantCU/BlueWhaleOS/commit/ecb6fdebb17240de5a80c8cf9e54d99623f0dab6))
* remove old pr workflow sections ([#98](https://github.com/EyeCantCU/BlueWhaleOS/issues/98)) ([4a21580](https://github.com/EyeCantCU/BlueWhaleOS/commit/4a21580f4e4d40692449bae61a75a555e8569be1))
* remove RPMs after installing RPMs, to guarantee cleanup ([3920ba9](https://github.com/EyeCantCU/BlueWhaleOS/commit/3920ba9ab53fd75e5b54fdecdd330e0a80fcc0bb))
* remove unneeded escape ([616c59c](https://github.com/EyeCantCU/BlueWhaleOS/commit/616c59c90bebd1d4dda24d5c28fa35adb067b13a))
* rename package back to `base` ([#97](https://github.com/EyeCantCU/BlueWhaleOS/issues/97)) ([785b8f0](https://github.com/EyeCantCU/BlueWhaleOS/commit/785b8f0d8adb8513bbe94b8918bfc0033ee0ca45))
* Restore - only submit to GHCR on live branch ([0dd0b39](https://github.com/EyeCantCU/BlueWhaleOS/commit/0dd0b3954ab89bc820ca842c0caf58713aaf1091))
* restore download artifact step, support multi-line tags ([#90](https://github.com/EyeCantCU/BlueWhaleOS/issues/90)) ([c40bddf](https://github.com/EyeCantCU/BlueWhaleOS/commit/c40bddfdf39a61545700ecb8123a02abd24a4f8f))
* retain variables ([091e939](https://github.com/EyeCantCU/BlueWhaleOS/commit/091e9396f2929bee6a3cf1606439377f75f13a92))
* revert previous commit ([5947af4](https://github.com/EyeCantCU/BlueWhaleOS/commit/5947af45da9ea324ab8c52e09142c916791d88e2))
* Scale factor should apply to HiDPI builds only ([7aa5bf3](https://github.com/EyeCantCU/BlueWhaleOS/commit/7aa5bf3c7b90104bb1d9113fad7e0170b5680405))
* Separate Boatswain from streaming setup ([6ad1bb1](https://github.com/EyeCantCU/BlueWhaleOS/commit/6ad1bb13e76743f05a7596c357d132f4f9402286))
* Set __GL_YIELD to usleep ([121d0db](https://github.com/EyeCantCU/BlueWhaleOS/commit/121d0dbc05ecf7561f94cd0205f39cb05a410b6c))
* Set global scale to 2x ([6e3e903](https://github.com/EyeCantCU/BlueWhaleOS/commit/6e3e903a42125c41692b1a7e52cfbed68babf7f5))
* Shortly re-enable rpmfusion repos ([23624ef](https://github.com/EyeCantCU/BlueWhaleOS/commit/23624efe57795610094f9bfea47c76e6863f80dc))
* spaces save lives ([ac45816](https://github.com/EyeCantCU/BlueWhaleOS/commit/ac45816a3e6cf29f20f78fff5e0535dd8c1daded))
* switch profile.d script to more robust technique ([c4b6b47](https://github.com/EyeCantCU/BlueWhaleOS/commit/c4b6b4760606c9f70c30a88c9b20474e5698cc95))
* thoroughly remove fedora Flatpaks, and install unfiltered Flathub ([475a3c9](https://github.com/EyeCantCU/BlueWhaleOS/commit/475a3c91cdfced27b73ad80a6d5e1ec19617d932))
* typo in /usr ([bd5db68](https://github.com/EyeCantCU/BlueWhaleOS/commit/bd5db68387150ee04afc348bfdfd42afdc4db167))
* typo in workflow_dispatch ([fbd14f5](https://github.com/EyeCantCU/BlueWhaleOS/commit/fbd14f502f6c2ceaeb02f6b7ddab246b7a507171))
* Update CODEOWNERS ([a9e017e](https://github.com/EyeCantCU/BlueWhaleOS/commit/a9e017e782ac2bcd901729038076ff748f2cd94e))
* update cosign action ([#94](https://github.com/EyeCantCU/BlueWhaleOS/issues/94)) ([0aff9ba](https://github.com/EyeCantCU/BlueWhaleOS/commit/0aff9bac374c3494f57a360fd4426afe705bfee9))
* update cosign installer version ([#32](https://github.com/EyeCantCU/BlueWhaleOS/issues/32)) ([91d4c38](https://github.com/EyeCantCU/BlueWhaleOS/commit/91d4c3877ca61595f4e1f6a5cfa5dbf4dcc0e596))
* use proper shebang line ([f24c407](https://github.com/EyeCantCU/BlueWhaleOS/commit/f24c4072fdb09f117f8e2b58baf017883725b7a0))
* use RECIPE arg ([6d77885](https://github.com/EyeCantCU/BlueWhaleOS/commit/6d778859c82924e920198c69c2e27bbabdf3ea3e))
* Use WhiteSur-cursors as default cursor theme ([d38e763](https://github.com/EyeCantCU/BlueWhaleOS/commit/d38e763bfebd2e1176493094c5bdbb4284471cf9))
* Use X11 in SDDM ([12cb06b](https://github.com/EyeCantCU/BlueWhaleOS/commit/12cb06bc67d44b16df70b8ddad32d1efebebec3c))
* use yq in setup-flatpaks ([66d2265](https://github.com/EyeCantCU/BlueWhaleOS/commit/66d22650f02cb4c551675614168b44eb89cb8345))


### Styles

* change base-container to base-image ([#49](https://github.com/EyeCantCU/BlueWhaleOS/issues/49)) ([1df862a](https://github.com/EyeCantCU/BlueWhaleOS/commit/1df862aae8472f765828043d0ae1bea2953b61a0))

## [1.4.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v1.3.0...v1.4.0) (2023-06-12)


### Features

* Add pre/post-install commands to yafti and clean up a bit ([9af8757](https://github.com/EyeCantCU/BlueWhaleOS/commit/9af8757ba95bcbab014908affa1516354d8f1ca6))
* Add ProtonUp-Qt to default flatpaks ([58f2432](https://github.com/EyeCantCU/BlueWhaleOS/commit/58f243214447f830b0bcc0262a39a7d643e82b79))
* Separate HiDPI images ([b34acd1](https://github.com/EyeCantCU/BlueWhaleOS/commit/b34acd1ccda0622c5ed3bc7631c56d7d62934e51))
* Ship chatgpt-shell-cli w/ glow ([6e57fe2](https://github.com/EyeCantCU/BlueWhaleOS/commit/6e57fe26195d6e6bc4c4611fbf8c2fd753145932))
* Ship Inter fonts ([e79a1a1](https://github.com/EyeCantCU/BlueWhaleOS/commit/e79a1a1f261f17f6e9a7c662f8ac83f981ede02d))
* Ship latest hosts file from Steven Black for adblocking ([533cc2f](https://github.com/EyeCantCU/BlueWhaleOS/commit/533cc2fd286fd6e666c85348732609f7a6dbbb3c))
* Ship latte dock ([9745009](https://github.com/EyeCantCU/BlueWhaleOS/commit/97450090d7cc43e477098d452a5653b27266602b))


### Bug Fixes

* distrobox instances created with just should pass 'nvidia' flag ([b57f5fa](https://github.com/EyeCantCU/BlueWhaleOS/commit/b57f5fa29ff31d73d7466636345a1b3b12c2908f))
* Don't start latte dock during setup ([b05b16b](https://github.com/EyeCantCU/BlueWhaleOS/commit/b05b16b3a3a8bd1bfab0212ce33442e8b923baf7))
* Handle Zsh configuration w/ just properly ([8471abe](https://github.com/EyeCantCU/BlueWhaleOS/commit/8471abedf197bf5b594c1af9cd5660e712bb3ddc))
* Lower SDDM DPI to 216 ([10d8b28](https://github.com/EyeCantCU/BlueWhaleOS/commit/10d8b28a7249a26764f1791f334640269cf5a0eb))
* Restore - only submit to GHCR on live branch ([0dd0b39](https://github.com/EyeCantCU/BlueWhaleOS/commit/0dd0b3954ab89bc820ca842c0caf58713aaf1091))

## [1.3.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v1.2.0...v1.3.0) (2023-06-08)


### Features

* Set default panel thickness to 76 ([7952ef7](https://github.com/EyeCantCU/BlueWhaleOS/commit/7952ef7f9634b0af32b89e88783b8468f4765bbf))
* Show hidden files (last) and full path by default ([18d723a](https://github.com/EyeCantCU/BlueWhaleOS/commit/18d723ab9bd00a9147d55e533243801b204a719a))


### Bug Fixes

* Disable often choppy animations ([b61cd26](https://github.com/EyeCantCU/BlueWhaleOS/commit/b61cd262b9ab0a9a715c1e6076875059eef179d0))
* Enable configure-zsh via just ([a5ea572](https://github.com/EyeCantCU/BlueWhaleOS/commit/a5ea5726dd430c41b41c82a1d06eba5d42204953))
* Ensure we are using breeze-dark icons ([6a69e0b](https://github.com/EyeCantCU/BlueWhaleOS/commit/6a69e0bcbffadfef6901b971a66118e5e2b85708))
* Set global scale to 2x ([6e3e903](https://github.com/EyeCantCU/BlueWhaleOS/commit/6e3e903a42125c41692b1a7e52cfbed68babf7f5))

## [1.2.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v1.1.0...v1.2.0) (2023-06-07)


### Features

* Add several utilities to yafti ([53754d3](https://github.com/EyeCantCU/BlueWhaleOS/commit/53754d3092f8a59076eda0093a359837a55d5cd2))
* Adjust SDDM DPI ([9b650ef](https://github.com/EyeCantCU/BlueWhaleOS/commit/9b650efe30acf8a760a7a0668bcf090c632298cb))
* Enable HiDPI in SDDM ([2543bdc](https://github.com/EyeCantCU/BlueWhaleOS/commit/2543bdcf9451d03adc4be0bcfad90cbc02370b44))
* Enable libvirtd ([9fc2b0f](https://github.com/EyeCantCU/BlueWhaleOS/commit/9fc2b0f498a0410c4cc7b811ca3c29c80319e8fc))
* Ship xbindkeys and configure scroll based desktop zoom ([05e5d49](https://github.com/EyeCantCU/BlueWhaleOS/commit/05e5d49d55c0a2de28c6494d2efee1c33e561d3b))


### Bug Fixes

* Enable WhiteSur cursor in SDDM ([b5201fd](https://github.com/EyeCantCU/BlueWhaleOS/commit/b5201fdfa70df13aafdd8cfb736c9ad38535b36e))
* Set __GL_YIELD to usleep ([121d0db](https://github.com/EyeCantCU/BlueWhaleOS/commit/121d0dbc05ecf7561f94cd0205f39cb05a410b6c))
* Use X11 in SDDM ([12cb06b](https://github.com/EyeCantCU/BlueWhaleOS/commit/12cb06bc67d44b16df70b8ddad32d1efebebec3c))

## [1.1.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v1.0.0...v1.1.0) (2023-06-06)


### Features

* Include additional cli utilities ([e1e21ff](https://github.com/EyeCantCU/BlueWhaleOS/commit/e1e21ff87133e1c266c213fc7f9e45844c8e2810))
* Include packages in virtualization group ([01d164e](https://github.com/EyeCantCU/BlueWhaleOS/commit/01d164eef713cac05e9d8749981321c0a7aad91a))
* Provide flatpaks with access to icons ([fcf4949](https://github.com/EyeCantCU/BlueWhaleOS/commit/fcf4949480ca7bc06fe814aa591dd607bcf9e57a))


### Bug Fixes

* Use WhiteSur-cursors as default cursor theme ([d38e763](https://github.com/EyeCantCU/BlueWhaleOS/commit/d38e763bfebd2e1176493094c5bdbb4284471cf9))

## 1.0.0 (2023-06-05)


### ⚠ BREAKING CHANGES

* optimize container layers and reduce image size
* only deploy the branch named "live", to simplify development
* remove legacy PWA setup command from custom.just
* move justfile to standardized, non-conflicting new location
* add new recipe flag which allows you to completely disable yafti
* enhanced autostart.desktop to use new script, and always find icon
* move all autostart-related files to standardized location
* move firstboot reference to new yafti.yml location ([#72](https://github.com/EyeCantCU/BlueWhaleOS/issues/72))
* move yafti.yml to standardized location
* move justfile to standardized location
* move recipe.yml to standardized location
* change base-container to base-image ([#49](https://github.com/EyeCantCU/BlueWhaleOS/issues/49))

### Features

* Add a few ham radio packages ([7942cbb](https://github.com/EyeCantCU/BlueWhaleOS/commit/7942cbbcfc728422c858db027e9bd8f29a59db3b))
* add a just setup command for setting up nix ([#48](https://github.com/EyeCantCU/BlueWhaleOS/issues/48)) ([1d208f6](https://github.com/EyeCantCU/BlueWhaleOS/commit/1d208f6eaec5000daab9e4bce69e5547a916df89))
* add back usr folder ([9f47c1e](https://github.com/EyeCantCU/BlueWhaleOS/commit/9f47c1eddfc00779de2fc4c07bb6816bda9adf76))
* Add btop ([0336e78](https://github.com/EyeCantCU/BlueWhaleOS/commit/0336e78d6d41a5bb91f25d04864d08b981cdf10c))
* Add code-of-conduct ([#39](https://github.com/EyeCantCU/BlueWhaleOS/issues/39)) ([aab8078](https://github.com/EyeCantCU/BlueWhaleOS/commit/aab8078cfdc7d2354e057a0ca4771d3a53d2df4c))
* add conventional commit linting and release notes generator ([b7820b4](https://github.com/EyeCantCU/BlueWhaleOS/commit/b7820b4ba312ca939d0dc977ed9f6a08d135324b))
* add cosign.key to gitignore ([#51](https://github.com/EyeCantCU/BlueWhaleOS/issues/51)) ([5f4ac04](https://github.com/EyeCantCU/BlueWhaleOS/commit/5f4ac049a7f60bb55e40da809e29ac1dd9f65fc9))
* Add duperemove ([f5a526f](https://github.com/EyeCantCU/BlueWhaleOS/commit/f5a526f370740877d2b54c1e7c7450e2a1ee9d8f))
* add extra repos field to recipe ([#52](https://github.com/EyeCantCU/BlueWhaleOS/issues/52)) ([c537104](https://github.com/EyeCantCU/BlueWhaleOS/commit/c537104ba2695a3c843ba7e67e7a118665f50c9a))
* add fedora 38 build ([#45](https://github.com/EyeCantCU/BlueWhaleOS/issues/45)) ([69fd4d7](https://github.com/EyeCantCU/BlueWhaleOS/commit/69fd4d7a57c5ce39331e47e8dedeb2a2f643190f))
* add function for reading individual YAML strings ([33ab88f](https://github.com/EyeCantCU/BlueWhaleOS/commit/33ab88f7940b6e360d3e8d7f4a1b0b393547dd92))
* add how to review a PR ([#76](https://github.com/EyeCantCU/BlueWhaleOS/issues/76)) ([ae2e25b](https://github.com/EyeCantCU/BlueWhaleOS/commit/ae2e25b92f5ebebed2fcaad53ecfab651a639d12))
* add new recipe flag which allows you to completely disable yafti ([32c06b0](https://github.com/EyeCantCU/BlueWhaleOS/commit/32c06b0867b0e4f66c3d1dfa303530682c16a52f))
* add per-recipe shell script support ([#38](https://github.com/EyeCantCU/BlueWhaleOS/issues/38)) ([37143b0](https://github.com/EyeCantCU/BlueWhaleOS/commit/37143b0e23582f8754808b77aee4b594bb877ba1))
* Add software development section to yafti ([f0e470a](https://github.com/EyeCantCU/BlueWhaleOS/commit/f0e470a45fee2c36a0ff26e6cd7c4df6a1b152a7))
* Add supergfxctl plasmoid ([9c2c310](https://github.com/EyeCantCU/BlueWhaleOS/commit/9c2c310c83083b9cfa0c979ea3dd81760a8fa04e))
* Add supergfxd and power-profiles-daemon services ([733b240](https://github.com/EyeCantCU/BlueWhaleOS/commit/733b240b8232b4b79ce29d690a0266b00a69281b))
* Add Ubuntu font family ([d3c6d9b](https://github.com/EyeCantCU/BlueWhaleOS/commit/d3c6d9b6ac1c7bf518e2ca60c21c4e7040901beb))
* Add WhiteSur cursors ([119c777](https://github.com/EyeCantCU/BlueWhaleOS/commit/119c7774b83de640de31aab08cab11cd09227b0f))
* add yafti.yml from bluefin ([f9a1561](https://github.com/EyeCantCU/BlueWhaleOS/commit/f9a1561f2c8a718890f4d932db8ce625342610e2))
* Adjust Fedora theme defaults ([fe7831f](https://github.com/EyeCantCU/BlueWhaleOS/commit/fe7831f37a32bf3f09afe0ba80847da08a5e2998))
* Adopt gaming configuration from Bazzite ([e8c32a9](https://github.com/EyeCantCU/BlueWhaleOS/commit/e8c32a9f93a16be5757828c973723cdcbd89e724))
* automatic repo version selection via YAML configuration ([baa8c47](https://github.com/EyeCantCU/BlueWhaleOS/commit/baa8c47ffa97ae25077d205432bec0c549b27319))
* Base on Ublue Kinoite w/ Nvidia drivers ([a677c5a](https://github.com/EyeCantCU/BlueWhaleOS/commit/a677c5a523eca56c0d4582f3f70fe87a87f5cfce))
* Change default wallpaper for SDDM to Darkest Hour ([eec4b45](https://github.com/EyeCantCU/BlueWhaleOS/commit/eec4b45ef160737bb0182bf545549bb6ee115c70))
* change description for more information ([33ddd2b](https://github.com/EyeCantCU/BlueWhaleOS/commit/33ddd2bbac6eebbf4716af0465808f2e2fe56ebc))
* declare base image and fedora ver in recipe ([fe16187](https://github.com/EyeCantCU/BlueWhaleOS/commit/fe16187a92400865b4f96e82ce4d6781478bdfe6))
* declare image description in recipe.yml ([c9c011d](https://github.com/EyeCantCU/BlueWhaleOS/commit/c9c011d842a9ef9ec5d3976a0fd167b22ca0f0ed))
* declare image name in recipe.yml ([2b40d4b](https://github.com/EyeCantCU/BlueWhaleOS/commit/2b40d4b4367c669f1e557194db7bc14ac40f8b53))
* Disable single click ([13bf875](https://github.com/EyeCantCU/BlueWhaleOS/commit/13bf8759c9d2d28d6864f0bf38aea7bf591b409b))
* Download UpNote post-install ([d3b7668](https://github.com/EyeCantCU/BlueWhaleOS/commit/d3b76682e4e47187f23aae594fa575ed7fd12233))
* ease customization by reading flatpaks and rpms to install from a recipe.yml. ([#79](https://github.com/EyeCantCU/BlueWhaleOS/issues/79)) ([a5e90a5](https://github.com/EyeCantCU/BlueWhaleOS/commit/a5e90a588f58a938405bf513d1032955be34028e))
* Enable Carl for Konsole ([10ed431](https://github.com/EyeCantCU/BlueWhaleOS/commit/10ed431643eeafb58ca6ca679b401f05f5c5c28b))
* Enable Carl with breeze-dark icons by default ([7a8fed2](https://github.com/EyeCantCU/BlueWhaleOS/commit/7a8fed2c94f6db8550ddc65d1b7fd15e23584cb2))
* enable manually running build ([2521741](https://github.com/EyeCantCU/BlueWhaleOS/commit/2521741049e25b13c3865225be26c3d63aa84a21))
* Exchange kwrite for kate ([b0c811c](https://github.com/EyeCantCU/BlueWhaleOS/commit/b0c811c611c1b13ce4e855f03d48e552613e1172))
* Generate ISOs for installation ([597afbe](https://github.com/EyeCantCU/BlueWhaleOS/commit/597afbe027130a89f1f5124e8879acc49f6cb73f))
* gha for building / publishing on pr ([#87](https://github.com/EyeCantCU/BlueWhaleOS/issues/87)) ([1726d18](https://github.com/EyeCantCU/BlueWhaleOS/commit/1726d182ee95ce5eb13f47212799a68b63c5aefc))
* implement a very flexible runner for "pre" and "post" scripts ([55ff636](https://github.com/EyeCantCU/BlueWhaleOS/commit/55ff6363be7a783a5949ede05575d2936a4c6e29))
* implement effortless RPM removal via YAML configuration ([bf19fa5](https://github.com/EyeCantCU/BlueWhaleOS/commit/bf19fa5eca5b6440f4cfe83aa33c2c2e5797d33e))
* Include Carl Plasma theme ([15ff61c](https://github.com/EyeCantCU/BlueWhaleOS/commit/15ff61c42b6af4f13ea8db741d67b1c9ad621aec))
* Include EmuDeck in gaming setup ([f7383e4](https://github.com/EyeCantCU/BlueWhaleOS/commit/f7383e48d99c6374cecd5d26e03c00038f5440fd))
* include flowchart graphic which explains new launcher hierarchy ([2f85593](https://github.com/EyeCantCU/BlueWhaleOS/commit/2f85593176abfe9eafdd59780d7909e386af4c15))
* Include FreeTube ([be888f3](https://github.com/EyeCantCU/BlueWhaleOS/commit/be888f34bcc9dae402664a018b20fb7e991d4114))
* Include latest Linux firmware ([e62e2f9](https://github.com/EyeCantCU/BlueWhaleOS/commit/e62e2f9dc7fa491a1b682c8ffc530d1533a5d113))
* Include micro editor ([3f5f5ea](https://github.com/EyeCantCU/BlueWhaleOS/commit/3f5f5eac7f3b88b440aa610861f7c7722fc22927))
* install repos first, so that they're available for scripting ([d09dd76](https://github.com/EyeCantCU/BlueWhaleOS/commit/d09dd7624355076616735f82e066f364c0d02470))
* Install VanillaOS' first-setup ([#55](https://github.com/EyeCantCU/BlueWhaleOS/issues/55)) ([43ddf0a](https://github.com/EyeCantCU/BlueWhaleOS/commit/43ddf0a123911f9dedc3a76dcfc314a7cb37e871))
* just do it 2 electric boogaloo ([962adbc](https://github.com/EyeCantCU/BlueWhaleOS/commit/962adbc4d5ccbc15df560084a2076db346c02273))
* just setup UpNote ([2339d27](https://github.com/EyeCantCU/BlueWhaleOS/commit/2339d27cc403eb54824da11bb817c6b50d779f36))
* Launch discover from yafti ([0b840e5](https://github.com/EyeCantCU/BlueWhaleOS/commit/0b840e5e796f921b9372766cd53b2429f6730e6f))
* leave a warning for people to move to new repo ([#99](https://github.com/EyeCantCU/BlueWhaleOS/issues/99)) ([ffcb397](https://github.com/EyeCantCU/BlueWhaleOS/commit/ffcb3973bd540d679ab033ed94de6336b903e7dd))
* Make ham programs flatpaks ([ca240c8](https://github.com/EyeCantCU/BlueWhaleOS/commit/ca240c8a83256822c137548d0fcc72174bdbfce3))
* new "autostart" binary, for easy startup customization ([8a5fd31](https://github.com/EyeCantCU/BlueWhaleOS/commit/8a5fd31f8877ff425dd360ab2cd8a63e67ddd95a))
* only deploy the branch named "live", to simplify development ([da17603](https://github.com/EyeCantCU/BlueWhaleOS/commit/da17603567bd7206a844d932c1cac34329d05817))
* Only wait 10s for systemd services ([03453ea](https://github.com/EyeCantCU/BlueWhaleOS/commit/03453ea551b9c501ebfbf3f0bb02b8cfc28d870c))
* refactor build.sh to use the new yafti launcher ([63a5e35](https://github.com/EyeCantCU/BlueWhaleOS/commit/63a5e3583b1f3fdd4224e5f7cf9844c7a2b3f0da))
* Replace Celluloid with VLC ([b0c3c39](https://github.com/EyeCantCU/BlueWhaleOS/commit/b0c3c39a29b7151a51ee15d1a0b7375e5d37c95a))
* Rework gaming and streaming setup ([dace598](https://github.com/EyeCantCU/BlueWhaleOS/commit/dace59881aac6e6a81277b2c6e68e066f43b21b3))
* sanity check Flathub's existence on all systems and all users ([aa157c2](https://github.com/EyeCantCU/BlueWhaleOS/commit/aa157c2514f8725e7535501fc4a02f95544a5850))
* Set Darkest Hour as default wallpaper for breeze-dark ([d373a3c](https://github.com/EyeCantCU/BlueWhaleOS/commit/d373a3c8dd60334dfcd57938ac8e5208abfc0e39))
* Set kscreenlocker wallpaper to Darkest Hour ([0b12173](https://github.com/EyeCantCU/BlueWhaleOS/commit/0b121730e46df84c5a80741ee50c362d7de95267))
* Setup gaming post-install ([f930101](https://github.com/EyeCantCU/BlueWhaleOS/commit/f930101cab4fdb329de106f5bcd1c6c7c917feec))
* Setup Zsh and service that configures it at boot ([85ee11f](https://github.com/EyeCantCU/BlueWhaleOS/commit/85ee11f9823615af9f34b59529a5ccf012d26b35))
* Ship bottles ([f109217](https://github.com/EyeCantCU/BlueWhaleOS/commit/f1092172aa9a58b827d86375d65024b81c8f5fff))
* Ship Brave browser ([4713c9d](https://github.com/EyeCantCU/BlueWhaleOS/commit/4713c9dfc55e7eb1159fdfc1d7b6c19ba25713ba))
* Ship Discord ([edb0559](https://github.com/EyeCantCU/BlueWhaleOS/commit/edb0559bbb9368ddbfa7fceb14f4cf193ec98b04))
* Ship Flatseal ([26685aa](https://github.com/EyeCantCU/BlueWhaleOS/commit/26685aafd5c15f14a0e899c640307801db913c61))
* Ship ProtonUp-Qt ([e0f440e](https://github.com/EyeCantCU/BlueWhaleOS/commit/e0f440e746e765398cb3c4c590ded0da6439e0b8))
* Ship Steam flatpak ([1a0229b](https://github.com/EyeCantCU/BlueWhaleOS/commit/1a0229b53a61eae9e91253a6f1aa2d0f4d4a72fa))
* Ship Telegram ([57054df](https://github.com/EyeCantCU/BlueWhaleOS/commit/57054dfa0ed9d710889ae98fa2c015b32f33abee))
* Ship VS Code ([2e84e0f](https://github.com/EyeCantCU/BlueWhaleOS/commit/2e84e0fdb2799d2a84415602fb156623c1727697))
* split flatpak update units into user and system ([#72](https://github.com/EyeCantCU/BlueWhaleOS/issues/72)) ([99c15be](https://github.com/EyeCantCU/BlueWhaleOS/commit/99c15be6f012cb590891c5ef16b2613dc538d144))
* streamlined YAML configuration for RPM-related settings ([4ca33a3](https://github.com/EyeCantCU/BlueWhaleOS/commit/4ca33a3fe37afeb14a5e764813f623be7c2af042))
* swap out custom build for RPM of vanilla-first-setup ([#59](https://github.com/EyeCantCU/BlueWhaleOS/issues/59)) ([6927892](https://github.com/EyeCantCU/BlueWhaleOS/commit/6927892581dadf8f31419a0d9b070bb7268513ba))
* switch to separate build script ([68122c8](https://github.com/EyeCantCU/BlueWhaleOS/commit/68122c87cacbadc47bd85403c2d1c5b5b49eab3f))
* switch to yafti for first boot ([0b669f5](https://github.com/EyeCantCU/BlueWhaleOS/commit/0b669f5bb502c5e334474c54c95fbb7fed184b36))
* tag PR builds independently from matrix.version, latest, and stable ([b022183](https://github.com/EyeCantCU/BlueWhaleOS/commit/b02218386235e6d40a11a48b5b1171e9acf8d1eb))
* ultimate laziness achieved with a powerful new script runner ([5cacb2f](https://github.com/EyeCantCU/BlueWhaleOS/commit/5cacb2fcd86aa499aba4188ef6357e7e008373bc))
* update artifacthub readme url ([6cc44ff](https://github.com/EyeCantCU/BlueWhaleOS/commit/6cc44ff4a9462727260733d9c973aae5a3f90c46))
* use a recipe matrix ([1bfabe6](https://github.com/EyeCantCU/BlueWhaleOS/commit/1bfabe674e92dd5bf7fc12956941857de4eacd0a))
* Use Carl as default in new user configurations ([90c881a](https://github.com/EyeCantCU/BlueWhaleOS/commit/90c881a93f0d15c9ac37b72f8728ff4da0697892))
* Use distrobox from git for nvidia support ([be543d6](https://github.com/EyeCantCU/BlueWhaleOS/commit/be543d62513493415f11b481ef8440968a0539f2))
* Use distrobox images for gaming and ham radio ([36dd673](https://github.com/EyeCantCU/BlueWhaleOS/commit/36dd6730cc53495dd85333ecbf058631fbd03422))
* use Fedora 38 ([#64](https://github.com/EyeCantCU/BlueWhaleOS/issues/64)) ([60ddd67](https://github.com/EyeCantCU/BlueWhaleOS/commit/60ddd67713b1fd843377276dbefb1afd54e23cc0))
* Use mesa from git ([e8c06dd](https://github.com/EyeCantCU/BlueWhaleOS/commit/e8c06ddd74dfb500948ec20fd44fea082b7c574e))
* Use Ubuntu fonts with rgb sub-pixel rendering and slight hinting ([b2511c5](https://github.com/EyeCantCU/BlueWhaleOS/commit/b2511c5ad14b42e90886dea6d483bd03ba8913cb))
* yafti package group for recipe.yml ([0cf6b13](https://github.com/EyeCantCU/BlueWhaleOS/commit/0cf6b13b6c44135848ae9a400b2fa3aa5aed657d))


### Bug Fixes

* $IMAGE_NAME -&gt; ${{ env.IMAGE_NAME }} ([678ab12](https://github.com/EyeCantCU/BlueWhaleOS/commit/678ab12c5ac41751775ca6898d09e2d09ea2d8b3))
* add a warning that we change the flatpak configuration ([#80](https://github.com/EyeCantCU/BlueWhaleOS/issues/80)) ([9a349e2](https://github.com/EyeCantCU/BlueWhaleOS/commit/9a349e2625791b90c11f640938060344ec3e4bd5))
* add flags to ensure that build aborts if there are errors ([4b9fe0b](https://github.com/EyeCantCU/BlueWhaleOS/commit/4b9fe0b05bd138cebd825e67cb6c5a062181d6d8))
* add libadwaita ([#45](https://github.com/EyeCantCU/BlueWhaleOS/issues/45)) ([ec91345](https://github.com/EyeCantCU/BlueWhaleOS/commit/ec91345bc71b373b3fa5aff4ad3df0eefec45fa4))
* add pip for yafti, remove zenity (unneeded) ([9e827fe](https://github.com/EyeCantCU/BlueWhaleOS/commit/9e827fe6be1495221cecc83746d266a78c55ba96))
* add recipe build arg ([#23](https://github.com/EyeCantCU/BlueWhaleOS/issues/23)) ([a27e3cf](https://github.com/EyeCantCU/BlueWhaleOS/commit/a27e3cfa13fbf76e145a6fcd4bb469d42daf5995))
* add shebang ([97ee716](https://github.com/EyeCantCU/BlueWhaleOS/commit/97ee7169f4a287520b516bc377b90046b717daaf))
* add the missing GNOME Core apps to "yafti" template ([7c3ae59](https://github.com/EyeCantCU/BlueWhaleOS/commit/7c3ae599e521fdab197dd8710f3b38b057d3f007))
* Add vte dependency for first-setup ([#56](https://github.com/EyeCantCU/BlueWhaleOS/issues/56)) ([f8917a3](https://github.com/EyeCantCU/BlueWhaleOS/commit/f8917a3258196f85b8e3805f5ebcb1c9c0db06a7))
* add zenity to not break if th FROM is changed ([9b3578b](https://github.com/EyeCantCU/BlueWhaleOS/commit/9b3578b2175d4ad2427736ff7a7e3bc962ea35f0))
* Address permission issue by moving configure-zsh.sh to /etc/profile.d ([82bc24c](https://github.com/EyeCantCU/BlueWhaleOS/commit/82bc24c72945042d79dc164b3f5a184496d5e1ac))
* allow forks to push to registry with label ([#86](https://github.com/EyeCantCU/BlueWhaleOS/issues/86)) ([14b1b7c](https://github.com/EyeCantCU/BlueWhaleOS/commit/14b1b7cb044ec616817aa30075609469dcb9986b))
* artifact upload/extract ([#88](https://github.com/EyeCantCU/BlueWhaleOS/issues/88)) ([6590066](https://github.com/EyeCantCU/BlueWhaleOS/commit/6590066ebcf72d6c4a56730dd682088db17d7df0))
* automatically determine current fedora version during build ([946f3d8](https://github.com/EyeCantCU/BlueWhaleOS/commit/946f3d82eec8bfb12a187c00b31aa5ac512fa0d7))
* Base image URL should reflect Kinoite Nvidia ([9c28a0e](https://github.com/EyeCantCU/BlueWhaleOS/commit/9c28a0e39b52dd217d03dba07dbaefb92341649d))
* change img to startingpoint in verification ([21eafaa](https://github.com/EyeCantCU/BlueWhaleOS/commit/21eafaa3c09c888f8b90a0345855a5024a24dacb))
* chore: manual merge action updates from main  ([#41](https://github.com/EyeCantCU/BlueWhaleOS/issues/41)) ([a9c15ac](https://github.com/EyeCantCU/BlueWhaleOS/commit/a9c15ac30655689f15e83e2534335f2b49a4622b))
* Containerfile has the RUNs ([bf5607e](https://github.com/EyeCantCU/BlueWhaleOS/commit/bf5607e49985d82ac95a0b42d1b7eeee5af00399))
* Correct Carl install paths ([c70563b](https://github.com/EyeCantCU/BlueWhaleOS/commit/c70563b727d04bcfc5c95e306a98898dabc30096))
* corrected readme ([9d831ac](https://github.com/EyeCantCU/BlueWhaleOS/commit/9d831ac736a658ae9949e17363abacfb37618f2b))
* Create duperemove directory later ([93396ad](https://github.com/EyeCantCU/BlueWhaleOS/commit/93396ad1fe660ef3aa87521dfe0d738bb193887f))
* Custom package names aren't supported in yafti ([0237f5f](https://github.com/EyeCantCU/BlueWhaleOS/commit/0237f5fd4d5554d5c92c331312f826fbee3bffa7))
* declare image name in one place ([73de53c](https://github.com/EyeCantCU/BlueWhaleOS/commit/73de53cd39fbc4a5c84e27d9df7215f91d689ab4))
* Disable kwin blur ([d59d25b](https://github.com/EyeCantCU/BlueWhaleOS/commit/d59d25b320e55fd9ef3802d91ccc8719a876a70a))
* don't copy usr as it's empty ([8b389d5](https://github.com/EyeCantCU/BlueWhaleOS/commit/8b389d5f049c6e9c74c9a742edf798d52beaab28))
* Don't generate an image when README.md is updated ([#36](https://github.com/EyeCantCU/BlueWhaleOS/issues/36)) ([8c170cf](https://github.com/EyeCantCU/BlueWhaleOS/commit/8c170cfe89dd306eec0940f4dc50ed245c94bc2b))
* Don't override plasma defaults ([ee11d61](https://github.com/EyeCantCU/BlueWhaleOS/commit/ee11d6172d84ddb2d0f96f99e269d26301e48881))
* enhanced autostart.desktop to use new script, and always find icon ([ec4d01c](https://github.com/EyeCantCU/BlueWhaleOS/commit/ec4d01caa8dfeeb152e474a40d7485903be98edd))
* extremely robust handling for YAML data fetching ([07cbe2c](https://github.com/EyeCantCU/BlueWhaleOS/commit/07cbe2cc08908ffef4a4543f2e50f0c3a80ed559))
* faster installation of custom RPMs ([5f072b8](https://github.com/EyeCantCU/BlueWhaleOS/commit/5f072b8b671ccb68b8e15aff62abebda4ac1115a))
* forgot a directory used by duperemove ([5a2f88f](https://github.com/EyeCantCU/BlueWhaleOS/commit/5a2f88ff5ed76f323499d7a389cdf4f75abb72f1))
* friendlier experience in the "yafti" first boot template ([c7deb7d](https://github.com/EyeCantCU/BlueWhaleOS/commit/c7deb7d6fe3aa4256d7a79123ffc250a24165263))
* further improve portability of login-profile.sh ([4318180](https://github.com/EyeCantCU/BlueWhaleOS/commit/4318180a7c134fc06c83bac550c90c50678550d8))
* improve "yq" arguments in justfile ([abbb283](https://github.com/EyeCantCU/BlueWhaleOS/commit/abbb283dbe69d1e126a8bf41141c517cdda0d488))
* Include util-linux-user for chsh ([4ef8e13](https://github.com/EyeCantCU/BlueWhaleOS/commit/4ef8e1359465b6c934800ed0305fba2e4b67ae1f))
* just do it ([29c7be7](https://github.com/EyeCantCU/BlueWhaleOS/commit/29c7be7cba2db20370a4ef17b06bff85d83a7243))
* Let's not use preview stack ([bd5112e](https://github.com/EyeCantCU/BlueWhaleOS/commit/bd5112e741375dd4137e29bb9aea50eca441e0a8))
* Let's try that again ([1e658cd](https://github.com/EyeCantCU/BlueWhaleOS/commit/1e658cd989ee413a3d2365b31b8c591877663424))
* loop over lines, functional var substitution ([773fc23](https://github.com/EyeCantCU/BlueWhaleOS/commit/773fc23804d7f6d5c044d46c28564a62d709f171))
* Make OS name lowercase to address warning ([acaed2d](https://github.com/EyeCantCU/BlueWhaleOS/commit/acaed2d5b4fcd89376c6ee921ac03e14e235ea76))
* Make sure mesa git is actually pulled ([5861a55](https://github.com/EyeCantCU/BlueWhaleOS/commit/5861a5542753716291944e2e659aadff5387a4a9))
* maybe? ([099445b](https://github.com/EyeCantCU/BlueWhaleOS/commit/099445ba07bd79240a1ba10646e7ab71df8b69b0))
* move all autostart-related files to standardized location ([34f6189](https://github.com/EyeCantCU/BlueWhaleOS/commit/34f6189d26043b0efb4242d186cfc211a0a16c14))
* move firstboot reference to new yafti.yml location ([#72](https://github.com/EyeCantCU/BlueWhaleOS/issues/72)) ([7004136](https://github.com/EyeCantCU/BlueWhaleOS/commit/700413653ee904c20a5ba2eb365dcfda33c77fec))
* move justfile to standardized location ([07642c2](https://github.com/EyeCantCU/BlueWhaleOS/commit/07642c2f43167d13b51ef3b29fa0679908fa8d93))
* move justfile to standardized, non-conflicting new location ([cec7397](https://github.com/EyeCantCU/BlueWhaleOS/commit/cec73978cf2ff49b0aad5278485e8854f5738519))
* move recipe.yml to standardized location ([077e724](https://github.com/EyeCantCU/BlueWhaleOS/commit/077e7243f264840cb71b801335cc9b728ee73813))
* move yafti.yml to standardized location ([8ee9967](https://github.com/EyeCantCU/BlueWhaleOS/commit/8ee996722f698d585651b252d60ef57d59fc1627))
* moving recipe back to a directory available on the host ([#47](https://github.com/EyeCantCU/BlueWhaleOS/issues/47)) ([95ff830](https://github.com/EyeCantCU/BlueWhaleOS/commit/95ff830b49649fd3d76f54e7cce1727ace6ac6c6))
* OBS VK capture moved to streaming ([a714f1c](https://github.com/EyeCantCU/BlueWhaleOS/commit/a714f1c5c5a2810ef090d0ed2998bfecc090da5d))
* only create yafti grp when flatpaks defined ([#46](https://github.com/EyeCantCU/BlueWhaleOS/issues/46)) ([b3f7f07](https://github.com/EyeCantCU/BlueWhaleOS/commit/b3f7f07d6ceca0489d699c6d2dfa4d995588c5c1))
* only generate date tag for main branch ([94aa5bb](https://github.com/EyeCantCU/BlueWhaleOS/commit/94aa5bb8df2aac0985d4c9422b19b0c03a3f25b0))
* optimize container layers and reduce image size ([e8b5be6](https://github.com/EyeCantCU/BlueWhaleOS/commit/e8b5be6e83099043a4aa51460154940af3ee7ce2))
* pre-generate empty "pre" and "post" script directories ([f0946f7](https://github.com/EyeCantCU/BlueWhaleOS/commit/f0946f74b9c93c46a57186d7df6d9310c1fb508b))
* prevent /etc/ merge issues ([#43](https://github.com/EyeCantCU/BlueWhaleOS/issues/43)) ([085d26a](https://github.com/EyeCantCU/BlueWhaleOS/commit/085d26aa1acd7252c1c54fbd18661fed1a69d4e1))
* Prevent plasma theming from being overwritten ([5e8f9c2](https://github.com/EyeCantCU/BlueWhaleOS/commit/5e8f9c255b9e78b2a8897af19c0b717d506a97f5))
* Purge post-build scripts - RTFM ([e219a0b](https://github.com/EyeCantCU/BlueWhaleOS/commit/e219a0b8b6b34ab8307ab9014824f1d0d14aafbb))
* re-tag image ([#92](https://github.com/EyeCantCU/BlueWhaleOS/issues/92)) ([a831ce0](https://github.com/EyeCantCU/BlueWhaleOS/commit/a831ce00df84d94e2bdb48013f650bcbb5b39568))
* remove -y flag from yq; not in  go version ([5a98ef6](https://github.com/EyeCantCU/BlueWhaleOS/commit/5a98ef653293d5d3a9b4f0920d3625291a93601a))
* remove 38 ([#89](https://github.com/EyeCantCU/BlueWhaleOS/issues/89)) ([8a6f343](https://github.com/EyeCantCU/BlueWhaleOS/commit/8a6f3433ad45b0f9f3da974a691001c02f498fb1))
* remove 38 builds and fix logo metadata ([#62](https://github.com/EyeCantCU/BlueWhaleOS/issues/62)) ([521f0ad](https://github.com/EyeCantCU/BlueWhaleOS/commit/521f0adcda598a1bf494d969df375f0c0a03a10c))
* remove duplicate flatpaks from recipe.yml ([4afc5b1](https://github.com/EyeCantCU/BlueWhaleOS/commit/4afc5b1b4482ec6eb5e1841cbb57d3d9e3d98f5c))
* remove extremely verbose "x" flag ([20e0a06](https://github.com/EyeCantCU/BlueWhaleOS/commit/20e0a06588e9b0e4edb3522f4d9602d2e681f4af))
* remove if statements ([#96](https://github.com/EyeCantCU/BlueWhaleOS/issues/96)) ([0c7bc17](https://github.com/EyeCantCU/BlueWhaleOS/commit/0c7bc17666ae038a0504d24a0e683f724c734527))
* remove legacy PWA setup command from custom.just ([ecb6fde](https://github.com/EyeCantCU/BlueWhaleOS/commit/ecb6fdebb17240de5a80c8cf9e54d99623f0dab6))
* remove old pr workflow sections ([#98](https://github.com/EyeCantCU/BlueWhaleOS/issues/98)) ([4a21580](https://github.com/EyeCantCU/BlueWhaleOS/commit/4a21580f4e4d40692449bae61a75a555e8569be1))
* remove RPMs after installing RPMs, to guarantee cleanup ([3920ba9](https://github.com/EyeCantCU/BlueWhaleOS/commit/3920ba9ab53fd75e5b54fdecdd330e0a80fcc0bb))
* remove unneeded escape ([616c59c](https://github.com/EyeCantCU/BlueWhaleOS/commit/616c59c90bebd1d4dda24d5c28fa35adb067b13a))
* rename package back to `base` ([#97](https://github.com/EyeCantCU/BlueWhaleOS/issues/97)) ([785b8f0](https://github.com/EyeCantCU/BlueWhaleOS/commit/785b8f0d8adb8513bbe94b8918bfc0033ee0ca45))
* restore download artifact step, support multi-line tags ([#90](https://github.com/EyeCantCU/BlueWhaleOS/issues/90)) ([c40bddf](https://github.com/EyeCantCU/BlueWhaleOS/commit/c40bddfdf39a61545700ecb8123a02abd24a4f8f))
* retain variables ([091e939](https://github.com/EyeCantCU/BlueWhaleOS/commit/091e9396f2929bee6a3cf1606439377f75f13a92))
* revert previous commit ([5947af4](https://github.com/EyeCantCU/BlueWhaleOS/commit/5947af45da9ea324ab8c52e09142c916791d88e2))
* Separate Boatswain from streaming setup ([6ad1bb1](https://github.com/EyeCantCU/BlueWhaleOS/commit/6ad1bb13e76743f05a7596c357d132f4f9402286))
* Shortly re-enable rpmfusion repos ([23624ef](https://github.com/EyeCantCU/BlueWhaleOS/commit/23624efe57795610094f9bfea47c76e6863f80dc))
* spaces save lives ([ac45816](https://github.com/EyeCantCU/BlueWhaleOS/commit/ac45816a3e6cf29f20f78fff5e0535dd8c1daded))
* switch profile.d script to more robust technique ([c4b6b47](https://github.com/EyeCantCU/BlueWhaleOS/commit/c4b6b4760606c9f70c30a88c9b20474e5698cc95))
* thoroughly remove fedora Flatpaks, and install unfiltered Flathub ([475a3c9](https://github.com/EyeCantCU/BlueWhaleOS/commit/475a3c91cdfced27b73ad80a6d5e1ec19617d932))
* typo in /usr ([bd5db68](https://github.com/EyeCantCU/BlueWhaleOS/commit/bd5db68387150ee04afc348bfdfd42afdc4db167))
* typo in workflow_dispatch ([fbd14f5](https://github.com/EyeCantCU/BlueWhaleOS/commit/fbd14f502f6c2ceaeb02f6b7ddab246b7a507171))
* update cosign action ([#94](https://github.com/EyeCantCU/BlueWhaleOS/issues/94)) ([0aff9ba](https://github.com/EyeCantCU/BlueWhaleOS/commit/0aff9bac374c3494f57a360fd4426afe705bfee9))
* update cosign installer version ([#32](https://github.com/EyeCantCU/BlueWhaleOS/issues/32)) ([91d4c38](https://github.com/EyeCantCU/BlueWhaleOS/commit/91d4c3877ca61595f4e1f6a5cfa5dbf4dcc0e596))
* use proper shebang line ([f24c407](https://github.com/EyeCantCU/BlueWhaleOS/commit/f24c4072fdb09f117f8e2b58baf017883725b7a0))
* use RECIPE arg ([6d77885](https://github.com/EyeCantCU/BlueWhaleOS/commit/6d778859c82924e920198c69c2e27bbabdf3ea3e))
* use yq in setup-flatpaks ([66d2265](https://github.com/EyeCantCU/BlueWhaleOS/commit/66d22650f02cb4c551675614168b44eb89cb8345))


### Styles

* change base-container to base-image ([#49](https://github.com/EyeCantCU/BlueWhaleOS/issues/49)) ([1df862a](https://github.com/EyeCantCU/BlueWhaleOS/commit/1df862aae8472f765828043d0ae1bea2953b61a0))

## [1.1.0](https://github.com/ublue-os/base/compare/v1.0.0...v1.1.0) (2023-03-03)


### Features

* add fedora 38 build ([#45](https://github.com/ublue-os/base/issues/45)) ([69fd4d7](https://github.com/ublue-os/base/commit/69fd4d7a57c5ce39331e47e8dedeb2a2f643190f))
* add how to review a PR ([#76](https://github.com/ublue-os/base/issues/76)) ([ae2e25b](https://github.com/ublue-os/base/commit/ae2e25b92f5ebebed2fcaad53ecfab651a639d12))
* ease customization by reading flatpaks and rpms to install from a recipe.yml. ([#79](https://github.com/ublue-os/base/issues/79)) ([a5e90a5](https://github.com/ublue-os/base/commit/a5e90a588f58a938405bf513d1032955be34028e))
* gha for building / publishing on pr ([#87](https://github.com/ublue-os/base/issues/87)) ([1726d18](https://github.com/ublue-os/base/commit/1726d182ee95ce5eb13f47212799a68b63c5aefc))
* Install VanillaOS' first-setup ([#55](https://github.com/ublue-os/base/issues/55)) ([43ddf0a](https://github.com/ublue-os/base/commit/43ddf0a123911f9dedc3a76dcfc314a7cb37e871))
* leave a warning for people to move to new repo ([#99](https://github.com/ublue-os/base/issues/99)) ([ffcb397](https://github.com/ublue-os/base/commit/ffcb3973bd540d679ab033ed94de6336b903e7dd))
* split flatpak update units into user and system ([#72](https://github.com/ublue-os/base/issues/72)) ([99c15be](https://github.com/ublue-os/base/commit/99c15be6f012cb590891c5ef16b2613dc538d144))
* swap out custom build for RPM of vanilla-first-setup ([#59](https://github.com/ublue-os/base/issues/59)) ([6927892](https://github.com/ublue-os/base/commit/6927892581dadf8f31419a0d9b070bb7268513ba))


### Bug Fixes

* add a warning that we change the flatpak configuration ([#80](https://github.com/ublue-os/base/issues/80)) ([9a349e2](https://github.com/ublue-os/base/commit/9a349e2625791b90c11f640938060344ec3e4bd5))
* Add vte dependency for first-setup ([#56](https://github.com/ublue-os/base/issues/56)) ([f8917a3](https://github.com/ublue-os/base/commit/f8917a3258196f85b8e3805f5ebcb1c9c0db06a7))
* allow forks to push to registry with label ([#86](https://github.com/ublue-os/base/issues/86)) ([14b1b7c](https://github.com/ublue-os/base/commit/14b1b7cb044ec616817aa30075609469dcb9986b))
* artifact upload/extract ([#88](https://github.com/ublue-os/base/issues/88)) ([6590066](https://github.com/ublue-os/base/commit/6590066ebcf72d6c4a56730dd682088db17d7df0))
* re-tag image ([#92](https://github.com/ublue-os/base/issues/92)) ([a831ce0](https://github.com/ublue-os/base/commit/a831ce00df84d94e2bdb48013f650bcbb5b39568))
* remove 38 ([#89](https://github.com/ublue-os/base/issues/89)) ([8a6f343](https://github.com/ublue-os/base/commit/8a6f3433ad45b0f9f3da974a691001c02f498fb1))
* remove 38 builds and fix logo metadata ([#62](https://github.com/ublue-os/base/issues/62)) ([521f0ad](https://github.com/ublue-os/base/commit/521f0adcda598a1bf494d969df375f0c0a03a10c))
* remove if statements ([#96](https://github.com/ublue-os/base/issues/96)) ([0c7bc17](https://github.com/ublue-os/base/commit/0c7bc17666ae038a0504d24a0e683f724c734527))
* remove old pr workflow sections ([#98](https://github.com/ublue-os/base/issues/98)) ([4a21580](https://github.com/ublue-os/base/commit/4a21580f4e4d40692449bae61a75a555e8569be1))
* rename package back to `base` ([#97](https://github.com/ublue-os/base/issues/97)) ([785b8f0](https://github.com/ublue-os/base/commit/785b8f0d8adb8513bbe94b8918bfc0033ee0ca45))
* restore download artifact step, support multi-line tags ([#90](https://github.com/ublue-os/base/issues/90)) ([c40bddf](https://github.com/ublue-os/base/commit/c40bddfdf39a61545700ecb8123a02abd24a4f8f))
* update cosign action ([#94](https://github.com/ublue-os/base/issues/94)) ([0aff9ba](https://github.com/ublue-os/base/commit/0aff9bac374c3494f57a360fd4426afe705bfee9))

## 1.0.0 (2023-02-04)


### Features

* Add code-of-conduct ([#39](https://github.com/ublue-os/base/issues/39)) ([aab8078](https://github.com/ublue-os/base/commit/aab8078cfdc7d2354e057a0ca4771d3a53d2df4c))
* add conventional commit linting and release notes generator ([b7820b4](https://github.com/ublue-os/base/commit/b7820b4ba312ca939d0dc977ed9f6a08d135324b))
* tag PR builds independently from matrix.version, latest, and stable ([b022183](https://github.com/ublue-os/base/commit/b02218386235e6d40a11a48b5b1171e9acf8d1eb))


### Bug Fixes

* Don't generate an image when README.md is updated ([#36](https://github.com/ublue-os/base/issues/36)) ([8c170cf](https://github.com/ublue-os/base/commit/8c170cfe89dd306eec0940f4dc50ed245c94bc2b))
* only generate date tag for main branch ([94aa5bb](https://github.com/ublue-os/base/commit/94aa5bb8df2aac0985d4c9422b19b0c03a3f25b0))
