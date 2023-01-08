
 ; (use-package gruvbox-theme
 ;             :init (load-theme 'gruvbox-dark-soft t))

 ; (use-package smart-mode-line
 ;  :init
 ;  (setq sml/no-confirm-load-theme t
 ;        sml/theme 'respectful)
 ;  (sml/setup))

;; 主题
(require 'doom-themes)
(load-theme 'doom-Iosvkem t)
;; 设置透明
(set-frame-parameter nil 'alpha '(85 .100))
;; 设置广播颜色
(set-cursor-color "green2")
;; 设置光标样式
(setq-default cursor-type 'box)

;; 设置英文字体
;; (set-face-attribute 'default nil :font "Sarasa Mono SC 16")

;; 设置中文字体
;; (set-fontset-font t 'an "Sarasa Mono SC 13")

(use-package all-the-icons
  :ensure t)

(use-package page-break-lines
  :ensure nil
  :config
  (turn-on-page-break-lines-mode))

;; ------ Dashboard ------
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
(setq dashboard-banner-logo-title "Welcome to Dashboard")
(setq dashboard-startup-banner "/Users/maoxian/.emacs.d/banner/cb66d8a1a3e5e0490459335bbbbce363.jpeg")
(setq dashboard-center-content t)
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-navigator t)
; (setq dashboard-show-shortcuts nil)
(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 10))


(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

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

