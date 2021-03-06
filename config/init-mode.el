;;; --- 绑定扩展名到特定的模式
(require 'powerline)
(powerline-center-evil-theme)
(powerline-reset)

(require 'diminish)
;;(eval-after-load "filladapt" '(diminish 'filladapt-mode))
;;(eval-after-load "auto-complete" '(diminish 'auto-complete-mode "AC"))

(eval-after-load "undo-tree" '(diminish 'undo-tree-mode))
(eval-after-load "eproject" '(diminish 'eproject-mode))
(eval-after-load "autorevert" '(diminish 'auto-revert-mode))
(eval-after-load "abbrev" '(diminish 'abbrev-mode  ))
;(eval-after-load "auto-complete" '(diminish 'auto-complete-mode "ⓐ " ))
;;(eval-after-load "yasnippet" '(diminish 'yas-minor-mode "ⓨ " ))
(eval-after-load "yasnippet" '(diminish 'yas-minor-mode "" ))


(dolist (elt-cons '(
                    ("\\.markdown" . markdown-mode)
                    ("\\.md" . markdown-mode)
                    ("\\.org\\'" . org-mode)
                    ("\\.cron\\(tab\\)?\\'" . crontab-mode)
                    ("cron\\(tab\\)?\\." . crontab-mode)
                    ("\\.html\\'" . web-mode)
                    ("SConstruct". python-mode)
                    ("\\.asdf\\'" . lisp-mode)
                    ("\\.js\\'" . js2-mode)
                    ("\\.jsx\\'" . js2-mode)
                    ("\\.h\\'" . c++-mode)
                    ("\\.mm\\'" . objc-mode)
                    ("\\.m\\'" . objc-mode)
                    ("\\.tpro\\'" . c++-mode)
                    ("\\.php\\'" . php-mode)
                    ))
  (add-to-alist 'auto-mode-alist elt-cons))


;;; ### Auto-fill ###
;;; --- 自动换行
(setq default-fill-column 100)          ;默认显示 100列就换行
(dolist (hook (list
               'after-text-mode-hook
               'message-mode-hook
               'org-mode-hook
               ))
  (add-hook hook '(lambda () (auto-fill-mode 1))))



(add-hook 'c-mode-hook '(lambda ( )
							(modify-syntax-entry ?_ "w" c-mode-syntax-table) ;将 _ 加入 单词中
							 ) )
(add-hook 'php-mode-hook '(lambda ( )
                            (when (s-matches-p "\\.blade\\.php" (buffer-name))
                              (web-mode )
                              )
							 ))



(add-hook 'php-mode-hook '(lambda ( )
							(modify-syntax-entry ?$ "." php-mode-syntax-table) 
							 (modify-syntax-entry ?_ "w" php-mode-syntax-table) ;将 _ 加入 单词中
                             (require 'php-align)
                             (php-align-setup)
							 ))




(add-hook 'org-mode-hook '(lambda ( )
							 (modify-syntax-entry ?_ "w" org-mode-syntax-table) ;将 _ 加入 单词中
							 ) )




(add-hook 'c++-mode-hook '(lambda ( )
							(modify-syntax-entry ?_ "w" c++-mode-syntax-table) ;将 _ 加入 单词中
							 ) )

(add-hook 'term-mode-hook '(lambda ( )
							(modify-syntax-entry ?_ "w" term-mode-syntax-table) ;将 _ 加入 单词中
							(modify-syntax-entry ?. "w" term-mode-syntax-table) ;将 _ 加入 单词中
							(modify-syntax-entry ?- "w" term-mode-syntax-table) ;将 _ 加入 单词中
							(modify-syntax-entry ?~ "w" term-mode-syntax-table) ;将 _ 加入 单词中
							(modify-syntax-entry ?/ "w" term-mode-syntax-table) ;将 _ 加入 单词中
							 ) )
(add-hook 'sh-mode-hook '(lambda ( )
							(modify-syntax-entry ?_ "w" sh-mode-syntax-table) ;将 _ 加入 单词中
							(modify-syntax-entry ?. "w" sh-mode-syntax-table) ;将 _ 加入 单词中
							(modify-syntax-entry ?- "w" sh-mode-syntax-table) ;将 _ 加入 单词中
							(modify-syntax-entry ?~ "w" sh-mode-syntax-table) ;将 _ 加入 单词中
							 ) )
	
(add-hook 'erlang-mode-hook '(lambda ( )
							(modify-syntax-entry ?_ "w" erlang-mode-syntax-table) ;将 _ 加入 单词中
							 ))



(add-hook 'nxml-mode-hook '(lambda ( )
							 (modify-syntax-entry ?= "." nxml-mode-syntax-table) 
							 (modify-syntax-entry ?_ "w" nxml-mode-syntax-table) ;将 _ 加入 单词中
							 ) )

(add-hook 'web-mode-hook '(lambda ( )
							 (modify-syntax-entry ?+ "." web-mode-syntax-table) 
                             (modify-syntax-entry ?- "w" web-mode-syntax-table) ;将 _ 加入 单词中
                             (modify-syntax-entry ?_ "w" web-mode-syntax-table) ;将 _ 加入 单词中
							 ))


(add-hook 'python-mode-hook '(lambda ( )
							   (modify-syntax-entry ?_ "w" python-mode-syntax-table) ;将 _ 加入 单词中
                               (elpy-enable)
							 ) )

(add-hook 'js2-mode-hook '(lambda ( )
							(modify-syntax-entry ?_ "w" js2-mode-syntax-table) ;将 _ 加入 单词中
                            (require 'js2-align)
                            (js2-align-setup)
                            ;;(require 'tern)
                            ;;(tern-mode t)
                            ;;(require 'tern-auto-complete)
                            ;;(tern-ac-setup)
                            (setup-tide-mode)
                            ))

(add-hook 'sql-mode-hook '(lambda ( )
							(modify-syntax-entry ?_ "w" sql-mode-syntax-table) ;将 _ 加入 单词中
                            ) )

(add-hook 'emacs-lisp-mode-hook '(lambda ( )
							(modify-syntax-entry ?- "w" emacs-lisp-mode-syntax-table) ;将 _ 加入 单词中
                            ) )



(add-hook 'go-mode-hook '(lambda ( )
						   (require 'go-autocomplete)
                           (add-hook 'before-save-hook 'gofmt-before-save)
                           (setq godef-command   (executable-find "~/bin/godef") )
                           (setenv "GOPATH" (concat (getenv "HOME" ) "/goprojects" ))
                           ))

(add-hook 'org-agenda-mode-hook '(lambda ( )
								   (org-defkey org-agenda-mode-map "j"        'org-agenda-next-line)
								   (org-defkey org-agenda-mode-map "k"        'org-agenda-previous-line)
                                   ) )

(add-hook 'find-file-hook  '(lambda()
                              (when (string= "js2-mode" major-mode )
                                (js2-mode-display-warnings-and-errors)
                                )))
(add-hook 'after-init-hook 'my-after-init-hook-erlang)
(defun my-after-init-hook-erlang ()
  (require 'edts-start)
  (edts-complete-setup )
  )

;; ;;java 
;; (require 'ajc-java-complete-config)
;; (add-hook 'java-mode-hook 'ajc-java-complete-mode)
;; (add-hook 'find-file-hook 'ajc-4-jsp-find-file-hook)

;; typescript
(defun setup-tide-mode ()
  (require 'tide)
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  ;;(setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'after-save-hook 'ts2js)

;; format options
;;(setq tide-format-options '(:insertSpaceAfterFunctionKeywordForAnonymousFunctions t :placeOpenBraceOnNewLineForFunctions nil))
;; see https://github.com/Microsoft/TypeScript/blob/cc58e2d7eb144f0b2ff89e6a6685fb4deaa24fde/src/server/protocol.d.ts#L421-473 for the full list available options

(add-hook 'typescript-mode-hook
          '(lambda ( )
             (setup-tide-mode)
             (modify-syntax-entry ?_ "w" typescript-mode-syntax-table) ;将 _ 加入 单词中
             (require 'ts-align)
             (typescript-align-setup)
          ))

(provide 'init-mode)

;;; init-mode.el ends here
