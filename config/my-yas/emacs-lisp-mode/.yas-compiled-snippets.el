;;; Compiled snippets and support files for `emacs-lisp-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'emacs-lisp-mode
					 '(("d" "(defun $1 ()\n  \"DOCSTRING\"\n  (interactive)\n  (let (var1)\n    (setq var1 some)\n    $0\n  ))" "defun" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Mon Feb 10 18:36:33 2014