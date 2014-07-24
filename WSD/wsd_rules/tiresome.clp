;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################
;@@@ Added by Prachi Rathore[14-3-14]
;All those stories about his childhood can become tiresome after a while. [m-w]
;उसके बचपन की सब कहानियाँ थोडे समय के बाद उबाऊ हो सकतीं हैं . 
(defrule tiresome0
(declare (salience 5000))
(id-root ?id tiresome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-after_saMbanXI   ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ubAU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tiresome.clp 	tiresome0   "  ?id "  ubAU )" crlf)
)
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[14-3-14]
;Buying a house can be a very tiresome business.[oald]
;घर खरीदना एक अत्यंत थकाने वाला काम हो सकता है . 
(defrule tiresome1
(declare (salience 400))
(id-root ?id tiresome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tiresome.clp 	tiresome1   "  ?id "   WakAne_vAlA)" crlf))
)

;@@@ Added by Prachi Rathore[14-3-14]
;
(defrule tiresome2
(declare (salience 200))
(id-root ?id tiresome)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tiresome.clp 	tiresome2   "  ?id "   WakAne_vAlA)" crlf))
)
