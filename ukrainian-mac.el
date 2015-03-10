;;; ukrainian-mac.el --- OS X Ukrainian keyboard input method  -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Magnus Henoch

;; Author: Magnus Henoch <magnus.henoch@gmail.com>
;; Keywords: i18n
;; Version: 0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This file defines a new input method, `ukrainian-mac', which
;; attempts to match the Ukrainian keyboard in Mac OS X.
;;
;; Install this file with M-x package-install-file.
;;
;; Copied from lisp/leim/quail/cyrillic.el.

;;; Code:

(quail-define-package
 "ukrainian-mac" "Ukrainian" "UK" nil
 "ЙЦУКЕН Ukrainian, as the OS X keyboard layout.
Compared to `ukrainian-computer', І and И are swapped."
 nil t t t t nil nil nil nil nil t)

;;  ' 1! 2" 3№ 4; 5% 6: 7? 8* 9( 0) -_ =+
;;   Й  Ц  У  К  Е  Н  Г  Ш  Щ  З  Х  Ї
;;    Ф  И  В  А  П  Р  О  Л  Д  Ж  Є  Ґ
;;      Я  Ч  С  М  І  Т  Ь  Б  Ю  .,

(quail-define-rules
 ("1" ?1)
 ("2" ?2)
 ("3" ?3)
 ("4" ?4)
 ("5" ?5)
 ("6" ?6)
 ("7" ?7)
 ("8" ?8)
 ("9" ?9)
 ("0" ?0)
 ("-" ?-)
 ("=" ?=)
 ("`" ?')
 ("q" ?й)
 ("w" ?ц)
 ("e" ?у)
 ("r" ?к)
 ("t" ?е)
 ("y" ?н)
 ("u" ?г)
 ("i" ?ш)
 ("o" ?щ)
 ("p" ?з)
 ("[" ?х)
 ("]" ?ї)
 ("a" ?ф)
 ("s" ?и)
 ("d" ?в)
 ("f" ?а)
 ("g" ?п)
 ("h" ?р)
 ("j" ?о)
 ("k" ?л)
 ("l" ?д)
 (";" ?ж)
 ("'" ?є)
 ("z" ?я)
 ("x" ?ч)
 ("c" ?с)
 ("v" ?м)
 ("b" ?і)
 ("n" ?т)
 ("m" ?ь)
 ("," ?б)
 ("." ?ю)
 ("/" ?.)
 ("!" ?!)
 ("@" ?\")
 ("#" ?№)
 ("$" ?\;)
 ("%" ?%)
 ("^" ?:)
 ("&" ??)
 ("*" ?*)
 ("(" ?()
 (")" ?))
 ("_" ?_)
 ("+" ?+)
 ("~" ?')
 ("Q" ?Й)
 ("W" ?Ц)
 ("E" ?У)
 ("R" ?К)
 ("T" ?Е)
 ("Y" ?Н)
 ("U" ?Г)
 ("I" ?Ш)
 ("O" ?Щ)
 ("P" ?З)
 ("{" ?Х)
 ("}" ?Ї)
 ("A" ?Ф)
 ("S" ?И)
 ("D" ?В)
 ("F" ?А)
 ("G" ?П)
 ("H" ?Р)
 ("J" ?О)
 ("K" ?Л)
 ("L" ?Д)
 (":" ?Ж)
 ("\"" ?Є)
 ("Z" ?Я)
 ("X" ?Ч)
 ("C" ?С)
 ("V" ?М)
 ("B" ?І)
 ("N" ?Т)
 ("M" ?Ь)
 ("<" ?Б)
 (">" ?Ю)
 ("?" ?,)
 ("\\" ?ґ)
 ("|" ?Ґ))

;;;###autoload
(register-input-method
 "ukrainian-mac" "Ukrainian" 'quail-use-package
 "UK" "ЙЦУКЕН Ukrainian, as the OS X keyboard layout.
Compared to `ukrainian-computer', І and И are swapped."
 "ukrainian-mac")

(provide 'ukrainian-mac)
;;; ukrainian-mac.el ends here
