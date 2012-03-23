;; ###############
;; 05 My-Custom
;; ###############

;; 5.1 Username and Email
(setq user-full-name "Gistian")
(setq user-mail-address "gistian@gmail.com")
;; 5.2 Bookmarks
(setq bookmark-default-file "~/.emacs.d/.emacs.bmk")
(setq abbrev-file-name "~/.emacs.d/.abbrev_defs")
;; 5.3 Calendar
(setq calendar-latitude +39.9)
(setq calendar-longitude +116.4)
(setq calendar-location-name "Beijing")
(setq calendar-remove-frame-by-deleting t)
(setq calendar-week-start-day 1)
(setq christian-holidays nil)
(setq hebrew-holidays nil)
(setq islamic-holidays nil)
(setq general-holidays '((holiday-fixed 1 1 "元旦")
                         (holiday-fixed 3 8 "妇女节")
                         (holiday-fixed 4 1 "愚人节")
                         (holiday-fixed 4 11 "谁的生日")
                         (holiday-fixed 5 1 "劳动节")
                         (holiday-fixed 10 1 "国庆节")
                         (holiday-fixed 12 25 "圣诞节")
                         (holiday-fixed 2 5 "元宵节")
                         (holiday-fixed 4 4 "清明节")
                         (holiday-fixed 4 21 "鬼节")
                         (holiday-fixed 6 22 "端午节")
                         (holiday-fixed 9 28 "中秋节")
                         (holiday-float 5 0 2 "母亲节")
                         (holiday-float 6 0 3 "父亲节")
                         ))
