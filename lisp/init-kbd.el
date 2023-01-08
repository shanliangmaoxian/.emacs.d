
;; macOS平台将Command键映射为Meta
(when *is-mac* (setq mac-command-modifier 'meta)
               (setq mac-option-modifier 'none))

(provide 'init-kbd)