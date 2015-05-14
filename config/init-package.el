
(require 'package)


(setq package-archives
			 '(("melpa" . "http://melpa.milkbox.net/packages/")) )

(package-initialize)
(unless (package-installed-p 'package+ )
  (package-refresh-contents)
  (package-install 'package+ )
 )

(require 'package+)

(package-manifest 'magit
				  'smex
                  'htmlize
				  'package+
				  'evil
				  'evil-surround
				  'evil-leader 
				  'evil-numbers
                  'ac-html-bootstrap 
                  'ac-html-csswatcher
				  'web-mode
				  'js2-mode
				  'go-mode
				  'erlang
				  'lua-mode
				  'markdown-mode+
				  'multi-term
				  'org
				  'yasnippet
				  'rtags
				  'auto-complete
				  'auto-complete-clang
				  'ac-php
				  'jedi
				  'session
				  'xcscope
				  'go-autocomplete
				  'php-mode
				  '2048-game
				  )

(provide 'init-package)

