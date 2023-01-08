
;; 主题
(use-package gruvbox-theme
             :init (load-theme 'gruvbox-dark-soft t))

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
        sml/theme 'respectful)
  (sml/setup))

;; ivy-posframe
(use-package ivy-posframe
;; Different command can use different display function.
 :init (setq ivy-posframe-display-functions-alist
      '((swiper          . ivy-posframe-display-at-point)
        (complete-symbol . ivy-posframe-display-at-point)
        (counsel-M-x     . ivy-posframe-display-at-window-bottom-left)
        (t               . ivy-posframe-display)))
 )

;; 重启emacs
(use-package restart-emacs)

;; 显示行号
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(provide 'init-ui)

