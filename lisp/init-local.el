;;; ivy fuzzy matching
(setq ivy-re-builders-alist '((t . ivy--regex-fuzzy)))
(setq ivy-initial-inputs-alist nil)

;;; previous and next buffer
(global-unset-key (kbd "C-9"))
(global-unset-key (kbd "C-0"))
(global-set-key (kbd "C-9") 'previous-buffer)
(global-set-key (kbd "C-0") 'next-buffer)

;;; disable auto save file
(setq auto-save-default nil)

;;; fast open init config
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f1>") 'open-init-file)

;;; set default font
(set-face-attribute 'default nil :family "Menlo" :height 200 :weight 'normal)

(provide 'init-local)
