# Changelog

## [1.2.0](https://github.com/EyeCantCU/BlueWhaleOS/compare/v1.1.0...v1.2.0) (2023-06-06)


### Features

* Adjust SDDM DPI ([9b650ef](https://github.com/EyeCantCU/BlueWhaleOS/commit/9b650efe30acf8a760a7a0668bcf090c632298cb))
* Enable HiDPI in SDDM ([2543bdc](https://github.com/EyeCantCU/BlueWhaleOS/commit/2543bdcf9451d03adc4be0bcfad90cbc02370b44))
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
