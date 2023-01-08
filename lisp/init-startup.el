
;; 设置系统的编码，避免各处的乱码
(prefer-coding-system 'utf-8)
(unless *is-windows*
    (set-selection-coding-system 'utf-8))

;; 设置垃圾回收阈值，加速启动速度
(setq gc-cons-threshold most-positive-fixnum)

;; 去掉工具栏 滚动条
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; 关掉启动界面
(setq inhibit-startup-screen t)

(provide 'init-startup)