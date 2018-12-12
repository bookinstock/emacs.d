(when (maybe-require-package 'projectile)
  (add-hook 'after-init-hook 'projectile-mode)

  ;; Shorter modeline
  (setq-default projectile-mode-line-prefix " Proj")

  (after-load 'projectile
    (setq projectile-globally-ignored-directories (append '("log") projectile-globally-unignored-directories))
    (setq projectile-globally-ignored-files (append '("*.log" "*.json") projectile-globally-ignored-files))
    (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

  (maybe-require-package 'ibuffer-projectile))

(provide 'init-projectile)
