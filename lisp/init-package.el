

(use-package restart-emacs)

;; 用y/n来代替yes/no
(use-package emacs
             :config (defalias 'yes-or-no-p 'y-or-n-p))

(use-package crux 
             :bind ("C-c k" . crux-smart-kill-line))

(use-package hungry-delete
  :bind (("C-c DEL" . hungry-delete-backward)
         ("C-c d" . hungry-delete-forward)))

(use-package drag-stuff
             :bind (("<M-up>" . drag-stuff-up)
                    ("<M-down>" . drag-stuff-down)))

;; 文本编辑之自动补全
(use-package company
  :hook (after-init . global-company-mode)
  :config (setq company-minimum-prefix-length 1
                company-show-quick-access t))

;; 文本编辑之语法检查
(use-package flymake
  :hook (prog-mode . flymake-mode)
  :config
  (global-set-key (kbd "M-n") #'flymake-goto-next-error)
  (global-set-key (kbd "M-p") #'flymake-goto-prev-error))

;; crux优化Emacs常用操作
(use-package crux
  :bind (("C-a" . 'crux-move-beginning-of-line)
         ("C-c ^" . 'crux-top-join-line)
         ("C-x ," . 'crux-find-user-init-file)
         ("C-c k" . 'crux-smart-kill-line)))

;; 记忆越来越长的快捷键
(use-package which-key
  :defer nil
  :config (which-key-mode))

(provide 'init-package)
