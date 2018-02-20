;;; This is all kind of necessary
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; Making sure theme theme is installed now
(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

;;; This is the actual config file
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;;; Anything below is personal preference
;;; You can change the font to suit your liking, it won't break anything.
;;; The one currently set up is called Terminus
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("53d1bb57dadafbdebb5fbd1a57c2d53d2b4db617f3e0e05849e78a4f78df3a1b" "a142def5bab9c1d1964eb2bf7506e790fa09df44aa9f3e41abd198f00cd6577e" "2a1b4531f353ec68f2afd51b396375ac2547c078d035f51242ba907ad8ca19da" "77c3f5f5acaa5a276ca709ff82cce9b303f49d383415f740ba8bcc76570718b9" "b5ecb5523d1a1e119dfed036e7921b4ba00ef95ac408b51d0cd1ca74870aeb14" "2af26301bded15f5f9111d3a161b6bfb3f4b93ec34ffa95e42815396da9cb560" "5a3a174263aff55dff3b235e24b367816e14c2bc4543d4f5789e6ca2e3e66c56" "1947a9f5d0fe630a91116a52a3a63ab55dc33080aa941a07014503a88ff21086" "cf594cc2d565d282b1a0fcfafbf93d27fb0721ae31615316539f2d4c17855992" "a03632e657fe56a8b9f53cc921f69c1996955d2128c0bd282f834e7562b9b38e" "07b7349e717d6aee60ae2425047b927e927c8a4e1383dded07fe6d0fbb1af222" "40b3e88c6e8f5c9786cd7ce3757b0b61db8b7ca78cca64d193fb8ad2f5604f1e" "b9f1b62114b1267ea2c672d5aace8bc71ca033f3d24a6fa2e680408e3eebae5d" "9776332afd2b25ec2c107b46ed159fe280964e4f18a2020bb79dd1c35395c6e9" "0bdc42c162a180121748fd3f87783d59a9a084ddbda9a30fbdaf0241ba0899d7" "5f8d69039b2b738bb5ea8b0a8c0ce6330fcf6cb0485d0712a354239efd69985c" "1d6ac175a7905b9ac9316e109a7a171a13e1ecf67f5f92467bf6ecc158a92721" "00829b0410e7987b64680050051882d5c9263f0a0e7a1171b043e36353822079" "74a85fe2e1b26970e8832cdd1e6a60a45b5a01245916507b594849630962d04a" "42021331ee9fb4d8361c34a2bd7cf0e33b8a338adaaf38514d20f3db18e0c360" "6c31cbe0710cf1ff4a42811592478c61db9c0ad037dc737b2d727bb674da1c62" "f245419b49153d5082c0442149707b3df215180cb487a1071ac04f95d466044c" "fd5bdfbabe98bde150b89afa9a56943571850558bef264f6ad7386192186ca5c" "a4d03266add9a1c8f12b5309612cbbf96e1291773c7bc4fb685bfdaf83b721c6" "0893ec074f7f1f06ce88f94439852516c07d854aece5354e790a09bb24f05202" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(nil nil t)
 '(package-selected-packages
   (quote
    (mark-multiple expand-region simple-mpc swiper doom-themes popup-kill-ring dmenu ido-vertical-mode ido-vertical screenshot ox-html5slide centered-window-mode htmlize ox-twbs diminish key-chord erc-hl-nicks treemacs symon rainbow-mode switch-window dashboard smex company sudo-edit emms magit org-bullets hungry-delete beacon linum-relative spaceline fancy-battery spacemacs-theme exwm which-key use-package)))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(screenshot-schemes (quote (("local" :dir "~/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 116 :width normal :foundry "1ASC" :family "xos4 Terminus"))))
 '(fringe ((t (:background "#292b2e")))))
