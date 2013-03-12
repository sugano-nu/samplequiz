;; Org-mode stuff

(add-to-list 'load-path (expand-file-name "~/path/to/org-mode/lisp"))
(add-to-list 'auto-mode-alist '("\\.\\(org\\  |org_archive\\|txt\\)$" . org-mode))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (latex . t)
   (R . t)))

;; for inline image display
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)   
(add-hook 'org-mode-hook 'org-display-inline-images)

;; so Org doesn't ask to confirm every time
(setq org-confirm-babel-evaluate nil)

