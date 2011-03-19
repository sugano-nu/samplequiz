;; Org-mode stuff

(add-to-list 'load-path (expand-file-name "~/path/to/org-mode/lisp"))
(add-to-list 'auto-mode-alist '("\\.\\(org\\  |org_archive\\|txt\\)$" . org-mode))
(require 'org-install)
(require 'org-habit)
(require 'org-publish)
(require 'org-latex)
 (add-to-list 'org-export-latex-packages-alist '("" "listings"))
 (add-to-list 'org-export-latex-packages-alist '("" "color"))

(org-babel-do-load-languages
      'org-babel-load-languages
      '((emacs-lisp . t)
        (latex . t)
        (R . t)))

;; for inline image display
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images)   
  (add-hook 'org-mode-hook 'org-display-inline-images)

;; CUSTOM stuff

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-confirm-babel-evaluate nil)
 '(org-file-apps (quote ((auto-mode . emacs) ("\\.mm\\'" . default) ("\\.x?html?\\'" . default) ("\\.pdf\\'" . "evince %s"))))
 '(org-startup-truncated nil))

